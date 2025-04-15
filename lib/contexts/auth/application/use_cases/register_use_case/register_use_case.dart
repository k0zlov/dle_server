import 'package:dle_server/contexts/auth/application/exceptions/auth_exceptions.dart';
import 'package:dle_server/contexts/auth/application/ports/users_repository_port.dart';
import 'package:dle_server/contexts/auth/auth_dependency_container.dart';
import 'package:dle_server/contexts/auth/domain/entities/user/user.dart';
import 'package:dle_server/contexts/auth/domain/events/user_registered.dart';
import 'package:dle_server/kernel/application/integration_events/user_registered.dart';
import 'package:dle_server/kernel/application/ports/event_bus.dart';
import 'package:dle_server/kernel/application/use_cases/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_use_case.freezed.dart';

part 'register_use_case.g.dart';

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    required String email,
    required String password,
  }) = _RegisterParams;

  factory RegisterParams.fromJson(Map<String, dynamic> json) =>
      _$RegisterParamsFromJson(json);
}

@lazySingleton
class RegisterUseCase implements UseCase<User, RegisterParams> {
  const RegisterUseCase({
    required this.repository,
    required this.integrationEventBus,
    @authContext required this.domainEventBus,
  });

  final UsersRepositoryPort repository;
  final DomainEventBus domainEventBus;
  final IntegrationEventBus integrationEventBus;

  @override
  Future<User> call(RegisterParams params) async {
    final User? foundUser = await repository.findUser(email: params.email);

    if (foundUser != null) {
      throw EmailIsNotAvailableException();
    }

    final User user = User.create(
      email: params.email,
      password: params.password,
    );

    await repository.saveUser(user);

    domainEventBus.publish(
      UserRegisteredEvent(userId: user.id, userEmail: user.email),
    );
    integrationEventBus.publish(
      UserRegisteredIntegrationEvent(userId: user.id),
    );

    return user;
  }
}
