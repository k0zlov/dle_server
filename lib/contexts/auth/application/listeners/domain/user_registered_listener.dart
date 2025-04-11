import 'dart:async';

import 'package:dle_server/contexts/auth/application/use_cases/send_email_code_use_case/send_email_code_use_case.dart';
import 'package:dle_server/contexts/auth/domain/events/user_registered.dart';
import 'package:dle_server/kernel/infrastructure/events/event_listener.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserRegisteredDomainListener
    extends DomainEventListener<UserRegisteredEvent> {
  UserRegisteredDomainListener({required this.sendEmailCodeUseCase});

  final SendEmailCodeUseCase sendEmailCodeUseCase;

  @override
  FutureOr<void> call(UserRegisteredEvent event) async {
    print('SENDING');

    final SendEmailCodeParams params = SendEmailCodeParams(
      email: event.userEmail,
    );

    await sendEmailCodeUseCase(params);
  }
}
