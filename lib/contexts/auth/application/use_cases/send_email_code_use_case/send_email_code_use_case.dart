import 'package:dle_server/contexts/auth/application/exceptions/auth_exceptions.dart';
import 'package:dle_server/contexts/auth/application/ports/email_codes_repository_port.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/email_code/email_code.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/infrastructure/services/mail/letters/email_verification_letter.dart';
import 'package:dle_server/kernel/infrastructure/services/mail/mail_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'send_email_code_use_case.freezed.dart';

part 'send_email_code_use_case.g.dart';

@freezed
class SendEmailCodeParams with _$SendEmailCodeParams {
  const factory SendEmailCodeParams({required String email}) =
      _SendEmailCodeParams;

  factory SendEmailCodeParams.fromJson(Map<String, dynamic> json) =>
      _$SendEmailCodeParamsFromJson(json);
}

@lazySingleton
class SendEmailCodeUseCase implements UseCase<void, SendEmailCodeParams> {
  const SendEmailCodeUseCase({
    required this.repository,
    required this.emailCodesRepository,
    required this.mailService,
  });

  final UsersRepositoryPort repository;
  final EmailCodesRepositoryPort emailCodesRepository;
  final MailService mailService;

  @override
  Future<void> call(SendEmailCodeParams params) async {
    final User? foundUser = await repository.findUser(email: params.email);

    if (foundUser == null) {
      throw UserNotFoundException();
    }

    if (foundUser.emailVerified) {
      throw EmailAlreadyVerifiedException();
    }

    final List<EmailCode> userCodes = await emailCodesRepository.getUserCodes(
      userId: foundUser.id,
    );

    final DateTime today = DateTime.now();
    final int sentTodayCount =
        userCodes
            .where(
              (code) =>
                  code.createdAt.year == today.year &&
                  code.createdAt.month == today.month &&
                  code.createdAt.day == today.day,
            )
            .length;

    if (sentTodayCount >= 2) {
      throw TooManyEmailVerificationRequestsException();
    }

    final EmailCode emailCode = EmailCode.create(userId: foundUser.id);

    final bool isSent = await mailService.send(
      letter: EmailVerificationLetter(
        recipients: [foundUser.email],
        code: emailCode.code,
      ),
    );

    if (!isSent) {
      throw CouldNotSentEmailLetter();
    }

    await emailCodesRepository.save(emailCode);
  }
}
