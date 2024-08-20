// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class HomeLocationStruct extends FFFirebaseStruct {
  HomeLocationStruct({
    double? lat,
    double? long,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _lat = lat,
        _long = long,
        super(firestoreUtilData);

  // "Lat" field.
  double? _lat;
  double get lat => _lat ?? 0.0;
  set lat(double? val) => _lat = val;

  void incrementLat(double amount) => lat = lat + amount;

  bool hasLat() => _lat != null;

  // "Long" field.
  double? _long;
  double get long => _long ?? 0.0;
  set long(double? val) => _long = val;

  void incrementLong(double amount) => long = long + amount;

  bool hasLong() => _long != null;

  static HomeLocationStruct fromMap(Map<String, dynamic> data) =>
      HomeLocationStruct(
        lat: castToType<double>(data['Lat']),
        long: castToType<double>(data['Long']),
      );

  static HomeLocationStruct? maybeFromMap(dynamic data) => data is Map
      ? HomeLocationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Lat': _lat,
        'Long': _long,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Lat': serializeParam(
          _lat,
          ParamType.double,
        ),
        'Long': serializeParam(
          _long,
          ParamType.double,
        ),
      }.withoutNulls;

  static HomeLocationStruct fromSerializableMap(Map<String, dynamic> data) =>
      HomeLocationStruct(
        lat: deserializeParam(
          data['Lat'],
          ParamType.double,
          false,
        ),
        long: deserializeParam(
          data['Long'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'HomeLocationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HomeLocationStruct &&
        lat == other.lat &&
        long == other.long;
  }

  @override
  int get hashCode => const ListEquality().hash([lat, long]);
}

HomeLocationStruct createHomeLocationStruct({
  double? lat,
  double? long,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HomeLocationStruct(
      lat: lat,
      long: long,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HomeLocationStruct? updateHomeLocationStruct(
  HomeLocationStruct? homeLocation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    homeLocation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHomeLocationStructData(
  Map<String, dynamic> firestoreData,
  HomeLocationStruct? homeLocation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (homeLocation == null) {
    return;
  }
  if (homeLocation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && homeLocation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final homeLocationData =
      getHomeLocationFirestoreData(homeLocation, forFieldValue);
  final nestedData =
      homeLocationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = homeLocation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHomeLocationFirestoreData(
  HomeLocationStruct? homeLocation, [
  bool forFieldValue = false,
]) {
  if (homeLocation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(homeLocation.toMap());

  // Add any Firestore field values
  homeLocation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHomeLocationListFirestoreData(
  List<HomeLocationStruct>? homeLocations,
) =>
    homeLocations?.map((e) => getHomeLocationFirestoreData(e, true)).toList() ??
    [];
