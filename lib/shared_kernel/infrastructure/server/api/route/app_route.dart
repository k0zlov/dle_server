import 'package:dle_server/shared_kernel/infrastructure/server/api/controllers/app/app_controller.dart';

abstract class AppRoute {
  const AppRoute();

  String get name {
    final className = runtimeType.toString();
    final firstWord = className.split(RegExp('(?=[A-Z])')).first.toLowerCase();
    return firstWord;
  }

  Set<AppController> get controllers;
}
