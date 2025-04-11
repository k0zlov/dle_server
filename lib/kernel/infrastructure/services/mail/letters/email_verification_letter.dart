import 'package:dle_server/kernel/infrastructure/services/mail/mail_service.dart';

class EmailVerificationLetter extends EmailLetter {
  const EmailVerificationLetter({
    required String code,
    required super.recipients,
  }) : super(
         fromName: 'no-reply',
         fromAddress: 'no-reply',
         subject: 'Verify Your Email Address on Dle',
         text: '''
        Hello,

Your verification code to confirm your email address is:

$code

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
      $code
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
       );
}
