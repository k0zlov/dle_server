import 'package:dle_server/contexts/dle/domain/entities/dle/dle.dart';
import 'package:dle_server/contexts/dle/domain/entities/dle_asset/dle_asset.dart';
import 'package:dle_server/kernel/domain/events/events.dart';

class DleAssetsUpdatedEvent extends DomainEvent {
  DleAssetsUpdatedEvent({
    required this.dle,
    required this.changedAssets,
    this.isDeletionUpdate = false,
  });

  final Dle dle;
  final bool isDeletionUpdate;
  final List<DleAsset> changedAssets;
}
