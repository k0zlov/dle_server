import 'package:dle_server/contexts/auth/infrastructure/persistence/tables/users.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_asset/dle_asset.dart';
import 'package:dle_server/contexts/dle/infrastructure/persistence/tables/dles.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/pg_date_time_converter.dart';
import 'package:dle_server/kernel/infrastructure/database/converters/uuid_value_to_string.dart';
import 'package:dle_server/kernel/infrastructure/database/database.dart';
import 'package:dle_server/kernel/infrastructure/database/tables/uploads.dart';
import 'package:dle_server/kernel/infrastructure/database/types/dialect_timestamp.dart';

export 'package:dle_server/contexts/dle/domain/entities/dle_asset/dle_asset.dart';

@UseRowClass(DleAsset)
class DleAssets extends Table {
  UuidColumn get id =>
      customType(
        PgTypes.uuid,
      ).withDefault(genRandomUuid()).map(const UuidValueToStringConverter())();

  @ReferenceName('DleAssetsInDle')
  UuidColumn get dleId =>
      customType(PgTypes.uuid)
          .references(Dles, #id, onDelete: KeyAction.cascade)
          .map(const UuidValueToStringConverter())();

  @ReferenceName('DleAssetsInUser')
  UuidColumn get userId =>
      customType(PgTypes.uuid)
          .references(Users, #id, onDelete: KeyAction.cascade)
          .map(const UuidValueToStringConverter())();

  @ReferenceName('DleAssetInUpload')
  UuidColumn get uploadId =>
      customType(PgTypes.uuid)
          .references(Uploads, #id, onDelete: KeyAction.cascade)
          .map(const UuidValueToStringConverter())();

  TextColumn get type => textEnum<DleAssetType>()();

  TimestampColumn get updatedAt =>
      customType(dialectAwareTimestamp)
          .map(const PgDateTimeConverter())
          .withDefault(const CustomExpression('CURRENT_TIMESTAMP'))();

  TimestampColumn get createdAt =>
      customType(dialectAwareTimestamp)
          .map(const PgDateTimeConverter())
          .withDefault(const CustomExpression('CURRENT_TIMESTAMP'))();

  @override
  Set<Column<Object>>? get primaryKey => {id};
}
