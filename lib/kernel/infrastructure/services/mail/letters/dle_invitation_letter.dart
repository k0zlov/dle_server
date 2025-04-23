import 'package:dle_server/kernel/infrastructure/services/mail/mail_service.dart';

class DleInvitationLetter extends EmailLetter {
  const DleInvitationLetter({
    required super.recipients,
    required String link,
    required String dleName,
  }) : super(
         fromName: 'no-reply',
         fromAddress: 'no-reply',
         subject: 'You’re Invited to $dleName',
         text: '''
Hello,

You were invited to $dleName. You can accept the invitation by clicking the link below:

$link

If you were not expecting this invitation, please ignore this email.

Thank you,  
Dle Team
''',
         html: '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invitation</title>
</head>
<body style="font-family: Arial, sans-serif; line-height: 1.5; background-color: #f9fafb; padding: 20px; margin: 0;">

  <div style="max-width: 600px; margin: 0 auto; background-color: #ffffff; border-radius: 8px; box-shadow: 0px 2px 4px rgba(0,0,0,0.1); padding: 20px;">
    <h2 style="color: #333333; margin-bottom: 20px;">You’re Invited to $dleName!</h2>
    <p style="font-size: 16px; color: #555555;">Hello,</p>

    <p style="font-size: 16px; color: #555555;">
      You were invited to <strong>$dleName</strong>. Please use the button below to accept the invitation and get started:
    </p>

    <p style="margin-top: 30px;">
      <a href="$link" style="display:inline-block; color: #ffffff; text-decoration:none; padding: 12px 24px; background-color: #28A745; border-radius: 4px; font-weight:bold;">
        Accept Invitation
      </a>
    </p>

    <p style="font-size: 14px; color: #999999; margin-top: 30px;">
      If you were not expecting this invitation, you can safely ignore this email.
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
