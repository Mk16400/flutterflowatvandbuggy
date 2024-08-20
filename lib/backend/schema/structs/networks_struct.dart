// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NetworksStruct extends FFFirebaseStruct {
  NetworksStruct({
    List<String>? available,
    String? preferred,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _available = available,
        _preferred = preferred,
        super(firestoreUtilData);

  // "available" field.
  List<String>? _available;
  List<String> get available => _available ?? const [];
  set available(List<String>? val) => _available = val;

  void updateAvailable(Function(List<String>) updateFn) {
    updateFn(_available ??= []);
  }

  bool hasAvailable() => _available != null;

  // "preferred" field.
  String? _preferred;
  String get preferred => _preferred ?? '';
  set preferred(String? val) => _preferred = val;

  bool hasPreferred() => _preferred != null;

  static NetworksStruct fromMap(Map<String, dynamic> data) => NetworksStruct(
        available: getDataList(data['available']),
        preferred: data['preferred'] as String?,
      );

  static NetworksStruct? maybeFromMap(dynamic data) =>
      data is Map ? NetworksStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'available': _available,
        'preferred': _preferred,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'available': serializeParam(
          _available,
          ParamType.String,
          isList: true,
        ),
        'preferred': serializeParam(
          _preferred,
          ParamType.String,
        ),
      }.withoutNulls;

  static NetworksStruct fromSerializableMap(Map<String, dynamic> data) =>
      NetworksStruct(
        available: deserializeParam<String>(
          data['available'],
          ParamType.String,
          true,
        ),
        preferred: deserializeParam(
          data['preferred'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NetworksStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is NetworksStruct &&
        listEquality.equals(available, other.available) &&
        preferred == other.preferred;
  }

  @override
  int get hashCode => const ListEquality().hash([available, preferred]);
}

NetworksStruct createNetworksStruct({
  String? preferred,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NetworksStruct(
      preferred: preferred,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NetworksStruct? updateNetworksStruct(
  NetworksStruct? networks, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    networks
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNetworksStructData(
  Map<String, dynamic> firestoreData,
  NetworksStruct? networks,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (networks == null) {
    return;
  }
  if (networks.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && networks.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final networksData = getNetworksFirestoreData(networks, forFieldValue);
  final nestedData = networksData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = networks.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNetworksFirestoreData(
  NetworksStruct? networks, [
  bool forFieldValue = false,
]) {
  if (networks == null) {
    return {};
  }
  final firestoreData = mapToFirestore(networks.toMap());

  // Add any Firestore field values
  networks.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNetworksListFirestoreData(
  List<NetworksStruct>? networkss,
) =>
    networkss?.map((e) => getNetworksFirestoreData(e, true)).toList() ?? [];
