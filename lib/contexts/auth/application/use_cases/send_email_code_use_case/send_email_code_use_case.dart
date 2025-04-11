import 'package:dartz/dartz.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/domain/entities/email_code/email_code.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:dle_server/kernel/infrastructure/services/mail/mail_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'send_email_code_use_case.freezed.dart';

part 'send_email_code_use_case.g.dart';

enum SendEmailCodeError { userNotFound, alreadyVerified, couldNotSendLetter }

@freezed
class SendEmailCodeParams with _$SendEmailCodeParams {
  const factory SendEmailCodeParams({required String userId}) =
      _SendEmailCodeParams;

  factory SendEmailCodeParams.fromJson(Map<String, dynamic> json) =>
      _$SendEmailCodeParamsFromJson(json);
}

@lazySingleton
class SendEmailCodeUseCase
    implements UseCase<SendEmailCodeError, void, SendEmailCodeParams> {
  const SendEmailCodeUseCase({
    required this.repository,
    required this.mailService,
  });

  final UsersRepositoryPort repository;
  final MailService mailService;

  @override
  Future<Either<SendEmailCodeError, void>> call(
    SendEmailCodeParams params,
  ) async {
    final User? foundUser = await repository.findUser(
      id: params.userId,
      includeEmailCodes: true,
    );

    if (foundUser == null) {
      return const Left(SendEmailCodeError.userNotFound);
    }

    if (foundUser.emailVerified) {
      return const Left(SendEmailCodeError.alreadyVerified);
    }

    final EmailCode emailCode = EmailCode.create(userId: foundUser.id);

    final bool isSent = await mailService.send(
      letter: EmailLetter(
        fromName: 'no-reply',
        fromAddress: 'no-reply',
        subject: 'Verify Your Email Address on Dle',
        recipients: [foundUser.email],
        text: '''
        Hello,

Your verification code to confirm your email address is:

${emailCode.code}

Please enter this code in the application to complete the email verification process.

If you did not request this verification code, please ignore this email.

Thank you,
Your Team
        ''',
        html: '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email Verification</title>
</head>
<body style="font-family: Arial, sans-serif; line-height: 1.5; background-color: #f9fafb; padding: 20px; margin: 0;">

  <div style="max-width: 600px; margin: 0 auto; background-color: #ffffff; border-radius: 8px; box-shadow: 0px 2px 4px rgba(0,0,0,0.1); padding: 20px;">
    <h2 style="color: #333333; margin-bottom: 20px;">Email Verification</h2>
    <p style="font-size: 16px; color: #555555;">Hello,</p>

    <p style="font-size: 16px; color: #555555;">
      Your verification code to confirm your email address is:
    </p>

    <p style="font-size: 24px; font-weight: bold; color: #000000; letter-spacing: 2px; padding: 12px; background-color: #f0f0f0; border-radius: 4px; width: max-content;">
      ${emailCode.code}
    </p>

    <p style="font-size: 16px; color: #555555;">
      Please enter this code in the application to complete the email verification process.
    </p>

    <p style="font-size: 14px; color: #999999; margin-top: 30px;">
      If you did not request this verification code, please ignore this email.
    </p>

    <p style="font-size: 16px; color: #555555; margin-top: 40px;">
      Thanks,<br/>
      Dle Team
    </p>
  </div>

</body>
</html>
        ''',
      ),
    );

    if (!isSent) {
      return const Left(SendEmailCodeError.couldNotSendLetter);
    }

    await repository.saveEmailCode(emailCode);

    return const Right(null);
  }
}
