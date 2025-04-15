import 'package:dle_server/kernel/application/exceptions/app_exception.dart';

class UploadNotFoundException implements AppException {}

class FileNotFoundException implements AppException {}

class InvalidMimeTypeException implements AppException {}
