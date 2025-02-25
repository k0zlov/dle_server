import 'package:dle_server/shared_kernel/infrastructure/server/entities/controller/app_controller.dart';

class AppRoute {
  AppRoute({
    required this.name,
    this.controllers = const [],
  });

  final String name;
  final List<AppController> controllers;
}
