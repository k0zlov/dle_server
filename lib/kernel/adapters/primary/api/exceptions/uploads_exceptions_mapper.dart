import 'package:dle_server/kernel/adapters/primary/api/exceptions/exceptions_mapper.dart';
import 'package:dle_server/kernel/application/exceptions/upload_exceptions.dart';
import 'package:dle_server/kernel/domain/exceptions/upload_exceptions.dart';
import 'package:injectable/injectable.dart';
import 'package:ruta/ruta.dart';

@lazySingleton
class UploadsExceptionsMapper extends ExceptionsMapper {
  @override
  ExceptionsMapping get mapping => {
    // AppException mappings
    UploadNotFoundException: const ApiException.notFound(
      'The requested upload was not found.',
    ),
    FileNotFoundException: const ApiException.notFound(
      'The requested file could not be found.',
    ),
    InvalidMimeTypeException: const ApiException.badRequest(
      'The provided file has an invalid or unsupported MIME type.',
    ),

    // DomainException mappings
    FileTooBigException: const ApiException.badRequest(
      'The uploaded file exceeds the allowed maximum size.',
    ),
  };
}
