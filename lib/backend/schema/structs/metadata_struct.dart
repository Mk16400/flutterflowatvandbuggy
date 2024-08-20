// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MetadataStruct extends FFFirebaseStruct {
  MetadataStruct({
    String? object,
    String? type,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _object = object,
        _type = type,
        super(firestoreUtilData);

  // "object" field.
  String? _object;
  String get object => _object ?? '';
  set object(String? val) => _object = val;

  bool hasObject() => _object != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  static MetadataStruct fromMap(Map<String, dynamic> data) => MetadataStruct(
        object: data['object'] as String?,
        type: data['type'] as String?,
      );

  static MetadataStruct? maybeFromMap(dynamic data) =>
      data is Map ? MetadataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'object': _object,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'object': serializeParam(
          _object,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
      }.withoutNulls;

  static MetadataStruct fromSerializableMap(Map<String, dynamic> data) =>
      MetadataStruct(
        object: deserializeParam(
          data['object'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MetadataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MetadataStruct &&
        object == other.object &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([object, type]);
}

MetadataStruct createMetadataStruct({
  String? object,
  String? type,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MetadataStruct(
      object: object,
      type: type,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MetadataStruct? updateMetadataStruct(
  MetadataStruct? metadata, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    metadata
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMetadataStructData(
  Map<String, dynamic> firestoreData,
  MetadataStruct? metadata,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (metadata == null) {
    return;
  }
  if (metadata.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && metadata.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final metadataData = getMetadataFirestoreData(metadata, forFieldValue);
  final nestedData = metadataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = metadata.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMetadataFirestoreData(
  MetadataStruct? metadata, [
  bool forFieldValue = false,
]) {
  if (metadata == null) {
    return {};
  }
  final firestoreData = mapToFirestore(metadata.toMap());

  // Add any Firestore field values
  metadata.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMetadataListFirestoreData(
  List<MetadataStruct>? metadatas,
) =>
    metadatas?.map((e) => getMetadataFirestoreData(e, true)).toList() ?? [];
