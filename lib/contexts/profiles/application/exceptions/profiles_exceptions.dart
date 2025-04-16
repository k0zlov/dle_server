import 'package:dle_server/kernel/application/exceptions/app_exception.dart';

class ProfileNotFoundException implements AppException {}

class UsernameIsNotAvailableException implements AppException {}

class CouldNotUploadPictureException implements AppException {}
