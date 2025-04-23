import 'package:dle_server/kernel/adapters/primary/api/exceptions/exceptions_mapper.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DleExceptionsMapper extends ExceptionsMapper {
  @override
  ExceptionsMapping get mapping => {};
}
