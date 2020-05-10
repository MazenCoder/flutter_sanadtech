import 'package:fluttersanadtech/core/model/entity_configs.dart';
import 'package:fluttersanadtech/core/model/entity_points.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:moor/moor.dart';

part 'app_database.g.dart';

@UseMoor(
    /// All Tables
    tables: [
      EntityPoints,
      EntityConfigs,
    ],
    /// All Daos
    daos: [
      EntityPointsDao,
      EntityConfigsDao,
    ],
    /// All Queries
    queries: {
      "deleteAllEntityPoints" : "DELETE FROM entity_points;",
      "deleteAllEntityConfig" : "DELETE FROM entity_configs;",
      "deleteEntityPoints" : "DELETE FROM entity_points WHERE id =:id;",
      "updateConfigPolyline" : "UPDATE entity_configs SET polyline =:polyline WHERE id_entity_config= 0003;",
      "updatePoint" : "UPDATE entity_points SET update_point =:update WHERE id =:d;",
      "updateConfigPolygon" : "UPDATE entity_configs SET polygon =:polygon WHERE id_entity_config= 0003;",
      "updateConfigMarkers" : "UPDATE entity_configs SET markers =:markers WHERE id_entity_config= 0003;",
      "updateConfigZoom" : "UPDATE entity_configs SET zoom =:zoom WHERE id_entity_config= 0003;",
    }
)
class AppDatabase extends _$AppDatabase {

  AppDatabase() : super((FlutterQueryExecutor.inDatabaseFolder(
    path: 'db.transport',
    logStatements: true,
  )));

  @override
  int get schemaVersion => 1;

  //! SINGLETON
  static final AppDatabase _singleton = new AppDatabase._internal();
  AppDatabase._internal() : super((FlutterQueryExecutor.inDatabaseFolder(
    path: 'db.sanadtech',
    logStatements: true,
  )));
  static AppDatabase get instance => _singleton;
}