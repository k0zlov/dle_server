// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dle_server/kernel/infrastructure/database/database.dart'
    as _i780;
import 'package:dle_server/kernel/infrastructure/services/token/token_service.dart'
    as _i665;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingletonAsync<_i780.Database>(() => _i780.Database.create());
    gh.lazySingleton<_i665.TokenService>(() => _i665.TokenServiceImpl.from());
    return this;
  }
}
