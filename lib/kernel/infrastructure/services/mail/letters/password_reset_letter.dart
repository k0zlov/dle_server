import 'package:dle_server/kernel/infrastructure/services/mail/mail_service.dart';

class PasswordResetLetter extends EmailLetter {
  const PasswordResetLetter({required String link, required super.recipients})
    : super(
        fromName: 'no-reply',
        fromAddress: 'no-reply',
        subject: 'Reset Your Password on Dle',
        text: '''
Hello,

We received a request to reset your password. You can reset your password by using the link below:

$link

This password reset link will expire in 30 minutes.

If you did not request a password reset, please ignore this email.

Thank you,  
Dle Team
''',
        html: '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Reset</title>
</head>
<body style="font-family: Arial, sans-serif; line-height: 1.5; background-color: #f9fafb; padding: 20px; margin: 0;">

  <div style="max-width: 600px; margin: 0 auto; background-color: #ffffff; border-radius: 8px; box-shadow: 0px 2px 4px rgba(0,0,0,0.1); padding: 20px;">
    <h2 style="color: #333333; margin-bottom: 20px;">Password Reset Request</h2>
    <p style="font-size: 16px; color: #555555;">Hello,</p>

    <p style="font-size: 16px; color: #555555;">
      We received a request to reset your password. Please use the button below to reset your password:
    </p>

    <p style="margin-top: 30px;">
      <a href="$link" style="display:inline-block; color: #ffffff; text-decoration:none; padding: 12px 24px; background-color: #007BFF; border-radius: 4px; font-weight:bold;">
        Reset My Password
      </a>
    </p>

    <p style="font-size: 14px; color: #999999; margin-top: 30px;">
      The password reset link will expire in 30 minutes.
      If you did not request this, you can safely ignore this email.
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
