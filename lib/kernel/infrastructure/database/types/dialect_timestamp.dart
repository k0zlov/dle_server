import 'package:users_api/shared_kernel/infrastructure/database/database.dart';

class DialectAwareTimestamp implements DialectAwareSqlType<PgDateTime> {
  /// The underlying type used when this dialect-aware type is used on postgres
  /// databases.
  static const _postgres = PgTypes.timestampWithTimezone;

  /// The fallback type used when we're not talking to postgres.
  static const _other = DriftSqlType.dateTime;

  const DialectAwareTimestamp();

  @override
  String mapToSqlLiteral(GenerationContext context, PgDateTime dartValue) {
    return switch (context.dialect) {
      SqlDialect.postgres => _postgres.mapToSqlLiteral(dartValue),
      _ => context.typeMapping.mapToSqlLiteral(dartValue.dateTime),
    };
  }

  @override
  Object mapToSqlParameter(GenerationContext context, PgDateTime dartValue) {
    return switch (context.dialect) {
      SqlDialect.postgres => _postgres.mapToSqlParameter(dartValue),
      _ => context.typeMapping.mapToSqlVariable(dartValue.dateTime)!,
    };
  }

  @override
  PgDateTime read(SqlTypes typeSystem, Object fromSql) {
    return switch (typeSystem.dialect) {
      SqlDialect.postgres => _postgres.read(fromSql),
      _ => PgDateTime(typeSystem.read(_other, fromSql)!),
    };
  }

  @override
  String sqlTypeName(GenerationContext context) {
    return switch (context.dialect) {
      SqlDialect.postgres => _postgres.sqlTypeName(context),
      _ => context.dialect.textType,
    };
  }
}

const dialectAwareTimestamp = DialectAwareTimestamp();
