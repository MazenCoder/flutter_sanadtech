// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class EntityPoint extends DataClass implements Insertable<EntityPoint> {
  final String id;
  final String info;
  final double latitude;
  final double longitude;
  final bool inside;
  final bool updatePoint;
  EntityPoint(
      {@required this.id,
      this.info,
      this.latitude,
      this.longitude,
      this.inside,
      this.updatePoint});
  factory EntityPoint.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final boolType = db.typeSystem.forDartType<bool>();
    return EntityPoint(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      info: stringType.mapFromDatabaseResponse(data['${effectivePrefix}info']),
      latitude: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude']),
      longitude: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude']),
      inside:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}inside']),
      updatePoint: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}update_point']),
    );
  }
  factory EntityPoint.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return EntityPoint(
      id: serializer.fromJson<String>(json['id']),
      info: serializer.fromJson<String>(json['info']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      inside: serializer.fromJson<bool>(json['inside']),
      updatePoint: serializer.fromJson<bool>(json['updatePoint']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'info': serializer.toJson<String>(info),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'inside': serializer.toJson<bool>(inside),
      'updatePoint': serializer.toJson<bool>(updatePoint),
    };
  }

  @override
  EntityPointsCompanion createCompanion(bool nullToAbsent) {
    return EntityPointsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      info: info == null && nullToAbsent ? const Value.absent() : Value(info),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      inside:
          inside == null && nullToAbsent ? const Value.absent() : Value(inside),
      updatePoint: updatePoint == null && nullToAbsent
          ? const Value.absent()
          : Value(updatePoint),
    );
  }

  EntityPoint copyWith(
          {String id,
          String info,
          double latitude,
          double longitude,
          bool inside,
          bool updatePoint}) =>
      EntityPoint(
        id: id ?? this.id,
        info: info ?? this.info,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        inside: inside ?? this.inside,
        updatePoint: updatePoint ?? this.updatePoint,
      );
  @override
  String toString() {
    return (StringBuffer('EntityPoint(')
          ..write('id: $id, ')
          ..write('info: $info, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('inside: $inside, ')
          ..write('updatePoint: $updatePoint')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          info.hashCode,
          $mrjc(
              latitude.hashCode,
              $mrjc(longitude.hashCode,
                  $mrjc(inside.hashCode, updatePoint.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is EntityPoint &&
          other.id == this.id &&
          other.info == this.info &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.inside == this.inside &&
          other.updatePoint == this.updatePoint);
}

class EntityPointsCompanion extends UpdateCompanion<EntityPoint> {
  final Value<String> id;
  final Value<String> info;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<bool> inside;
  final Value<bool> updatePoint;
  const EntityPointsCompanion({
    this.id = const Value.absent(),
    this.info = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.inside = const Value.absent(),
    this.updatePoint = const Value.absent(),
  });
  EntityPointsCompanion.insert({
    @required String id,
    this.info = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.inside = const Value.absent(),
    this.updatePoint = const Value.absent(),
  }) : id = Value(id);
  EntityPointsCompanion copyWith(
      {Value<String> id,
      Value<String> info,
      Value<double> latitude,
      Value<double> longitude,
      Value<bool> inside,
      Value<bool> updatePoint}) {
    return EntityPointsCompanion(
      id: id ?? this.id,
      info: info ?? this.info,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      inside: inside ?? this.inside,
      updatePoint: updatePoint ?? this.updatePoint,
    );
  }
}

class $EntityPointsTable extends EntityPoints
    with TableInfo<$EntityPointsTable, EntityPoint> {
  final GeneratedDatabase _db;
  final String _alias;
  $EntityPointsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _infoMeta = const VerificationMeta('info');
  GeneratedTextColumn _info;
  @override
  GeneratedTextColumn get info => _info ??= _constructInfo();
  GeneratedTextColumn _constructInfo() {
    return GeneratedTextColumn(
      'info',
      $tableName,
      true,
    );
  }

  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  GeneratedRealColumn _latitude;
  @override
  GeneratedRealColumn get latitude => _latitude ??= _constructLatitude();
  GeneratedRealColumn _constructLatitude() {
    return GeneratedRealColumn(
      'latitude',
      $tableName,
      true,
    );
  }

  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  GeneratedRealColumn _longitude;
  @override
  GeneratedRealColumn get longitude => _longitude ??= _constructLongitude();
  GeneratedRealColumn _constructLongitude() {
    return GeneratedRealColumn(
      'longitude',
      $tableName,
      true,
    );
  }

  final VerificationMeta _insideMeta = const VerificationMeta('inside');
  GeneratedBoolColumn _inside;
  @override
  GeneratedBoolColumn get inside => _inside ??= _constructInside();
  GeneratedBoolColumn _constructInside() {
    return GeneratedBoolColumn('inside', $tableName, true,
        defaultValue: const Constant(false));
  }

  final VerificationMeta _updatePointMeta =
      const VerificationMeta('updatePoint');
  GeneratedBoolColumn _updatePoint;
  @override
  GeneratedBoolColumn get updatePoint =>
      _updatePoint ??= _constructUpdatePoint();
  GeneratedBoolColumn _constructUpdatePoint() {
    return GeneratedBoolColumn('update_point', $tableName, true,
        defaultValue: const Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, info, latitude, longitude, inside, updatePoint];
  @override
  $EntityPointsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'entity_points';
  @override
  final String actualTableName = 'entity_points';
  @override
  VerificationContext validateIntegrity(EntityPointsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.info.present) {
      context.handle(
          _infoMeta, info.isAcceptableValue(d.info.value, _infoMeta));
    }
    if (d.latitude.present) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableValue(d.latitude.value, _latitudeMeta));
    }
    if (d.longitude.present) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableValue(d.longitude.value, _longitudeMeta));
    }
    if (d.inside.present) {
      context.handle(
          _insideMeta, inside.isAcceptableValue(d.inside.value, _insideMeta));
    }
    if (d.updatePoint.present) {
      context.handle(_updatePointMeta,
          updatePoint.isAcceptableValue(d.updatePoint.value, _updatePointMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EntityPoint map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return EntityPoint.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(EntityPointsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<String, StringType>(d.id.value);
    }
    if (d.info.present) {
      map['info'] = Variable<String, StringType>(d.info.value);
    }
    if (d.latitude.present) {
      map['latitude'] = Variable<double, RealType>(d.latitude.value);
    }
    if (d.longitude.present) {
      map['longitude'] = Variable<double, RealType>(d.longitude.value);
    }
    if (d.inside.present) {
      map['inside'] = Variable<bool, BoolType>(d.inside.value);
    }
    if (d.updatePoint.present) {
      map['update_point'] = Variable<bool, BoolType>(d.updatePoint.value);
    }
    return map;
  }

  @override
  $EntityPointsTable createAlias(String alias) {
    return $EntityPointsTable(_db, alias);
  }
}

class EntityConfig extends DataClass implements Insertable<EntityConfig> {
  final int idEntityConfig;
  final String info;
  final double latitude;
  final double longitude;
  final double zoom;
  final bool polygon;
  final bool polyline;
  final bool markers;
  EntityConfig(
      {@required this.idEntityConfig,
      this.info,
      this.latitude,
      this.longitude,
      this.zoom,
      this.polygon,
      this.polyline,
      this.markers});
  factory EntityConfig.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final boolType = db.typeSystem.forDartType<bool>();
    return EntityConfig(
      idEntityConfig: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}id_entity_config']),
      info: stringType.mapFromDatabaseResponse(data['${effectivePrefix}info']),
      latitude: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude']),
      longitude: doubleType
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude']),
      zoom: doubleType.mapFromDatabaseResponse(data['${effectivePrefix}zoom']),
      polygon:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}polygon']),
      polyline:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}polyline']),
      markers:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}markers']),
    );
  }
  factory EntityConfig.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return EntityConfig(
      idEntityConfig: serializer.fromJson<int>(json['idEntityConfig']),
      info: serializer.fromJson<String>(json['info']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      zoom: serializer.fromJson<double>(json['zoom']),
      polygon: serializer.fromJson<bool>(json['polygon']),
      polyline: serializer.fromJson<bool>(json['polyline']),
      markers: serializer.fromJson<bool>(json['markers']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idEntityConfig': serializer.toJson<int>(idEntityConfig),
      'info': serializer.toJson<String>(info),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'zoom': serializer.toJson<double>(zoom),
      'polygon': serializer.toJson<bool>(polygon),
      'polyline': serializer.toJson<bool>(polyline),
      'markers': serializer.toJson<bool>(markers),
    };
  }

  @override
  EntityConfigsCompanion createCompanion(bool nullToAbsent) {
    return EntityConfigsCompanion(
      idEntityConfig: idEntityConfig == null && nullToAbsent
          ? const Value.absent()
          : Value(idEntityConfig),
      info: info == null && nullToAbsent ? const Value.absent() : Value(info),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      zoom: zoom == null && nullToAbsent ? const Value.absent() : Value(zoom),
      polygon: polygon == null && nullToAbsent
          ? const Value.absent()
          : Value(polygon),
      polyline: polyline == null && nullToAbsent
          ? const Value.absent()
          : Value(polyline),
      markers: markers == null && nullToAbsent
          ? const Value.absent()
          : Value(markers),
    );
  }

  EntityConfig copyWith(
          {int idEntityConfig,
          String info,
          double latitude,
          double longitude,
          double zoom,
          bool polygon,
          bool polyline,
          bool markers}) =>
      EntityConfig(
        idEntityConfig: idEntityConfig ?? this.idEntityConfig,
        info: info ?? this.info,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        zoom: zoom ?? this.zoom,
        polygon: polygon ?? this.polygon,
        polyline: polyline ?? this.polyline,
        markers: markers ?? this.markers,
      );
  @override
  String toString() {
    return (StringBuffer('EntityConfig(')
          ..write('idEntityConfig: $idEntityConfig, ')
          ..write('info: $info, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('zoom: $zoom, ')
          ..write('polygon: $polygon, ')
          ..write('polyline: $polyline, ')
          ..write('markers: $markers')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idEntityConfig.hashCode,
      $mrjc(
          info.hashCode,
          $mrjc(
              latitude.hashCode,
              $mrjc(
                  longitude.hashCode,
                  $mrjc(
                      zoom.hashCode,
                      $mrjc(polygon.hashCode,
                          $mrjc(polyline.hashCode, markers.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is EntityConfig &&
          other.idEntityConfig == this.idEntityConfig &&
          other.info == this.info &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.zoom == this.zoom &&
          other.polygon == this.polygon &&
          other.polyline == this.polyline &&
          other.markers == this.markers);
}

class EntityConfigsCompanion extends UpdateCompanion<EntityConfig> {
  final Value<int> idEntityConfig;
  final Value<String> info;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<double> zoom;
  final Value<bool> polygon;
  final Value<bool> polyline;
  final Value<bool> markers;
  const EntityConfigsCompanion({
    this.idEntityConfig = const Value.absent(),
    this.info = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.zoom = const Value.absent(),
    this.polygon = const Value.absent(),
    this.polyline = const Value.absent(),
    this.markers = const Value.absent(),
  });
  EntityConfigsCompanion.insert({
    @required int idEntityConfig,
    this.info = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.zoom = const Value.absent(),
    this.polygon = const Value.absent(),
    this.polyline = const Value.absent(),
    this.markers = const Value.absent(),
  }) : idEntityConfig = Value(idEntityConfig);
  EntityConfigsCompanion copyWith(
      {Value<int> idEntityConfig,
      Value<String> info,
      Value<double> latitude,
      Value<double> longitude,
      Value<double> zoom,
      Value<bool> polygon,
      Value<bool> polyline,
      Value<bool> markers}) {
    return EntityConfigsCompanion(
      idEntityConfig: idEntityConfig ?? this.idEntityConfig,
      info: info ?? this.info,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      zoom: zoom ?? this.zoom,
      polygon: polygon ?? this.polygon,
      polyline: polyline ?? this.polyline,
      markers: markers ?? this.markers,
    );
  }
}

class $EntityConfigsTable extends EntityConfigs
    with TableInfo<$EntityConfigsTable, EntityConfig> {
  final GeneratedDatabase _db;
  final String _alias;
  $EntityConfigsTable(this._db, [this._alias]);
  final VerificationMeta _idEntityConfigMeta =
      const VerificationMeta('idEntityConfig');
  GeneratedIntColumn _idEntityConfig;
  @override
  GeneratedIntColumn get idEntityConfig =>
      _idEntityConfig ??= _constructIdEntityConfig();
  GeneratedIntColumn _constructIdEntityConfig() {
    return GeneratedIntColumn(
      'id_entity_config',
      $tableName,
      false,
    );
  }

  final VerificationMeta _infoMeta = const VerificationMeta('info');
  GeneratedTextColumn _info;
  @override
  GeneratedTextColumn get info => _info ??= _constructInfo();
  GeneratedTextColumn _constructInfo() {
    return GeneratedTextColumn(
      'info',
      $tableName,
      true,
    );
  }

  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  GeneratedRealColumn _latitude;
  @override
  GeneratedRealColumn get latitude => _latitude ??= _constructLatitude();
  GeneratedRealColumn _constructLatitude() {
    return GeneratedRealColumn(
      'latitude',
      $tableName,
      true,
    );
  }

  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  GeneratedRealColumn _longitude;
  @override
  GeneratedRealColumn get longitude => _longitude ??= _constructLongitude();
  GeneratedRealColumn _constructLongitude() {
    return GeneratedRealColumn(
      'longitude',
      $tableName,
      true,
    );
  }

  final VerificationMeta _zoomMeta = const VerificationMeta('zoom');
  GeneratedRealColumn _zoom;
  @override
  GeneratedRealColumn get zoom => _zoom ??= _constructZoom();
  GeneratedRealColumn _constructZoom() {
    return GeneratedRealColumn(
      'zoom',
      $tableName,
      true,
    );
  }

  final VerificationMeta _polygonMeta = const VerificationMeta('polygon');
  GeneratedBoolColumn _polygon;
  @override
  GeneratedBoolColumn get polygon => _polygon ??= _constructPolygon();
  GeneratedBoolColumn _constructPolygon() {
    return GeneratedBoolColumn('polygon', $tableName, true,
        defaultValue: const Constant(false));
  }

  final VerificationMeta _polylineMeta = const VerificationMeta('polyline');
  GeneratedBoolColumn _polyline;
  @override
  GeneratedBoolColumn get polyline => _polyline ??= _constructPolyline();
  GeneratedBoolColumn _constructPolyline() {
    return GeneratedBoolColumn('polyline', $tableName, true,
        defaultValue: const Constant(true));
  }

  final VerificationMeta _markersMeta = const VerificationMeta('markers');
  GeneratedBoolColumn _markers;
  @override
  GeneratedBoolColumn get markers => _markers ??= _constructMarkers();
  GeneratedBoolColumn _constructMarkers() {
    return GeneratedBoolColumn('markers', $tableName, true,
        defaultValue: const Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns => [
        idEntityConfig,
        info,
        latitude,
        longitude,
        zoom,
        polygon,
        polyline,
        markers
      ];
  @override
  $EntityConfigsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'entity_configs';
  @override
  final String actualTableName = 'entity_configs';
  @override
  VerificationContext validateIntegrity(EntityConfigsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.idEntityConfig.present) {
      context.handle(
          _idEntityConfigMeta,
          idEntityConfig.isAcceptableValue(
              d.idEntityConfig.value, _idEntityConfigMeta));
    } else if (isInserting) {
      context.missing(_idEntityConfigMeta);
    }
    if (d.info.present) {
      context.handle(
          _infoMeta, info.isAcceptableValue(d.info.value, _infoMeta));
    }
    if (d.latitude.present) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableValue(d.latitude.value, _latitudeMeta));
    }
    if (d.longitude.present) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableValue(d.longitude.value, _longitudeMeta));
    }
    if (d.zoom.present) {
      context.handle(
          _zoomMeta, zoom.isAcceptableValue(d.zoom.value, _zoomMeta));
    }
    if (d.polygon.present) {
      context.handle(_polygonMeta,
          polygon.isAcceptableValue(d.polygon.value, _polygonMeta));
    }
    if (d.polyline.present) {
      context.handle(_polylineMeta,
          polyline.isAcceptableValue(d.polyline.value, _polylineMeta));
    }
    if (d.markers.present) {
      context.handle(_markersMeta,
          markers.isAcceptableValue(d.markers.value, _markersMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idEntityConfig};
  @override
  EntityConfig map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return EntityConfig.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(EntityConfigsCompanion d) {
    final map = <String, Variable>{};
    if (d.idEntityConfig.present) {
      map['id_entity_config'] = Variable<int, IntType>(d.idEntityConfig.value);
    }
    if (d.info.present) {
      map['info'] = Variable<String, StringType>(d.info.value);
    }
    if (d.latitude.present) {
      map['latitude'] = Variable<double, RealType>(d.latitude.value);
    }
    if (d.longitude.present) {
      map['longitude'] = Variable<double, RealType>(d.longitude.value);
    }
    if (d.zoom.present) {
      map['zoom'] = Variable<double, RealType>(d.zoom.value);
    }
    if (d.polygon.present) {
      map['polygon'] = Variable<bool, BoolType>(d.polygon.value);
    }
    if (d.polyline.present) {
      map['polyline'] = Variable<bool, BoolType>(d.polyline.value);
    }
    if (d.markers.present) {
      map['markers'] = Variable<bool, BoolType>(d.markers.value);
    }
    return map;
  }

  @override
  $EntityConfigsTable createAlias(String alias) {
    return $EntityConfigsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $EntityPointsTable _entityPoints;
  $EntityPointsTable get entityPoints =>
      _entityPoints ??= $EntityPointsTable(this);
  $EntityConfigsTable _entityConfigs;
  $EntityConfigsTable get entityConfigs =>
      _entityConfigs ??= $EntityConfigsTable(this);
  EntityPointsDao _entityPointsDao;
  EntityPointsDao get entityPointsDao =>
      _entityPointsDao ??= EntityPointsDao(this as AppDatabase);
  EntityConfigsDao _entityConfigsDao;
  EntityConfigsDao get entityConfigsDao =>
      _entityConfigsDao ??= EntityConfigsDao(this as AppDatabase);
  Future<int> deleteAllEntityPoints() {
    return customUpdate(
      'DELETE FROM entity_points;',
      variables: [],
      updates: {entityPoints},
    );
  }

  Future<int> deleteAllEntityConfig() {
    return customUpdate(
      'DELETE FROM entity_configs;',
      variables: [],
      updates: {entityConfigs},
    );
  }

  Future<int> deleteEntityPoints(String id) {
    return customUpdate(
      'DELETE FROM entity_points WHERE id =:id;',
      variables: [Variable.withString(id)],
      updates: {entityPoints},
    );
  }

  Future<int> updateConfigPolyline(bool polyline) {
    return customUpdate(
      'UPDATE entity_configs SET polyline =:polyline WHERE id_entity_config= 0003;',
      variables: [Variable.withBool(polyline)],
      updates: {entityConfigs},
    );
  }

  Future<int> updatePoint(bool update, String d) {
    return customUpdate(
      'UPDATE entity_points SET update_point =:update WHERE id =:d;',
      variables: [Variable.withBool(update), Variable.withString(d)],
      updates: {entityPoints},
    );
  }

  Future<int> updateConfigPolygon(bool polygon) {
    return customUpdate(
      'UPDATE entity_configs SET polygon =:polygon WHERE id_entity_config= 0003;',
      variables: [Variable.withBool(polygon)],
      updates: {entityConfigs},
    );
  }

  Future<int> updateConfigMarkers(bool markers) {
    return customUpdate(
      'UPDATE entity_configs SET markers =:markers WHERE id_entity_config= 0003;',
      variables: [Variable.withBool(markers)],
      updates: {entityConfigs},
    );
  }

  Future<int> updateConfigZoom(double zoom) {
    return customUpdate(
      'UPDATE entity_configs SET zoom =:zoom WHERE id_entity_config= 0003;',
      variables: [Variable.withReal(zoom)],
      updates: {entityConfigs},
    );
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [entityPoints, entityConfigs];
}
