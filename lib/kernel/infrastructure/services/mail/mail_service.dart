import 'package:injectable/injectable.dart';
import 'package:mailer/mailer.dart' as mailer;
import 'package:mailer/smtp_server.dart';

class EmailLetter {
  const EmailLetter({
    required this.subject,
    required this.text,
    required this.fromAddress,
    required this.recipients,
    this.fromName,
    this.html,
  });

  final String fromAddress;
  final String? fromName;

  final List<String> recipients;

  final String subject;
  final String text;
  final String? html;

  mailer.Message toMessage({required String emailUrl}) {
    return mailer.Message()
      ..from = mailer.Address('$fromAddress$emailUrl', fromName)
      ..recipients = recipients
      ..subject = subject
      ..text = text
      ..html = html;
  }
}

abstract interface class MailService {
  Future<bool> send({required EmailLetter letter});
}

@LazySingleton(as: MailService)
class MailServiceImpl implements MailService {
  const MailServiceImpl({
    required this.smtpServer,
    @Named('emailUrl') required this.emailUrl,
  });

  final SmtpServer smtpServer;
  final String emailUrl;

  @override
  Future<bool> send({required EmailLetter letter}) async {
    try {
      await mailer.send(letter.toMessage(emailUrl: emailUrl), smtpServer);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
