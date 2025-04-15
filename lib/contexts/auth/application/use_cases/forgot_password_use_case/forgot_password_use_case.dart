import 'package:dle_server/contexts/auth/application/exceptions/auth_exceptions.dart';
import 'package:dle_server/contexts/auth/application/ports/password_reset_tokens_repository_port.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/application/use_cases/send_email_code_use_case/send_email_code_use_case.dart';
import 'package:dle_server/contexts/auth/domain/entities/password_reset_token/password_reset_token.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/infrastructure/services/mail/letters/password_reset_letter.dart';
import 'package:dle_server/kernel/infrastructure/services/mail/mail_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_use_case.freezed.dart';

part 'forgot_password_use_case.g.dart';

@freezed
class ForgotPasswordParams with _$ForgotPasswordParams {
  const factory ForgotPasswordParams({required String email}) =
      _ForgotPasswordParams;

  factory ForgotPasswordParams.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordParamsFromJson(json);
}

@lazySingleton
class ForgotPasswordUseCase implements UseCase<void, ForgotPasswordParams> {
  const ForgotPasswordUseCase({
    required this.repository,
    required this.mailService,
    required this.passwordResetTokensRepository,
    required this.sendEmailCodeUseCase,
    @Named('passwordResetUrl') required this.passwordResetUrl,
  });

  final UsersRepositoryPort repository;
  final PasswordResetTokensRepositoryPort passwordResetTokensRepository;
  final SendEmailCodeUseCase sendEmailCodeUseCase;
  final MailService mailService;

  final String passwordResetUrl;

  @override
  Future<void> call(ForgotPasswordParams params) async {
    final User? foundUser = await repository.findUser(email: params.email);

    if (foundUser == null) {
      throw UserNotFoundException();
    }

    if (!foundUser.emailVerified) {
      await sendEmailCodeUseCase(SendEmailCodeParams(email: foundUser.email));
      throw EmailIsNotVerifiedException();
    }

    final List<PasswordResetToken> userTokens =
        await passwordResetTokensRepository.getUserTokens(userId: foundUser.id);

    final DateTime today = DateTime.now();
    final int sentTodayCount =
        userTokens
            .where(
              (code) =>
                  code.createdAt.year == today.year &&
                  code.createdAt.month == today.month &&
                  code.createdAt.day == today.day,
            )
            .length;

    if (sentTodayCount >= 2) {
      throw TooManyForgotPasswordRequestsException();
    }

    final PasswordResetToken token = PasswordResetToken.create(
      userId: foundUser.id,
    );

    final bool isSuccess = await mailService.send(
      letter: PasswordResetLetter(
        link: '$passwordResetUrl${token.id}',
        recipients: [foundUser.email],
      ),
    );

    if (!isSuccess) {
      throw CouldNotSendTokenException();
    }

    await passwordResetTokensRepository.save(token);
  }
}
