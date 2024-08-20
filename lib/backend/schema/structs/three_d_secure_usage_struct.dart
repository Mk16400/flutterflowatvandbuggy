// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ThreeDSecureUsageStruct extends FFFirebaseStruct {
  ThreeDSecureUsageStruct({
    bool? supported,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _supported = supported,
        super(firestoreUtilData);

  // "supported" field.
  bool? _supported;
  bool get supported => _supported ?? false;
  set supported(bool? val) => _supported = val;

  bool hasSupported() => _supported != null;

  static ThreeDSecureUsageStruct fromMap(Map<String, dynamic> data) =>
      ThreeDSecureUsageStruct(
        supported: data['supported'] as bool?,
      );

  static ThreeDSecureUsageStruct? maybeFromMap(dynamic data) => data is Map
      ? ThreeDSecureUsageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'supported': _supported,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'supported': serializeParam(
          _supported,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ThreeDSecureUsageStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ThreeDSecureUsageStruct(
        supported: deserializeParam(
          data['supported'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ThreeDSecureUsageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ThreeDSecureUsageStruct && supported == other.supported;
  }

  @override
  int get hashCode => const ListEquality().hash([supported]);
}

ThreeDSecureUsageStruct createThreeDSecureUsageStruct({
  bool? supported,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ThreeDSecureUsageStruct(
      supported: supported,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ThreeDSecureUsageStruct? updateThreeDSecureUsageStruct(
  ThreeDSecureUsageStruct? threeDSecureUsage, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    threeDSecureUsage
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addThreeDSecureUsageStructData(
  Map<String, dynamic> firestoreData,
  ThreeDSecureUsageStruct? threeDSecureUsage,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (threeDSecureUsage == null) {
    return;
  }
  if (threeDSecureUsage.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && threeDSecureUsage.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final threeDSecureUsageData =
      getThreeDSecureUsageFirestoreData(threeDSecureUsage, forFieldValue);
  final nestedData =
      threeDSecureUsageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = threeDSecureUsage.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getThreeDSecureUsageFirestoreData(
  ThreeDSecureUsageStruct? threeDSecureUsage, [
  bool forFieldValue = false,
]) {
  if (threeDSecureUsage == null) {
    return {};
  }
  final firestoreData = mapToFirestore(threeDSecureUsage.toMap());

  // Add any Firestore field values
  threeDSecureUsage.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getThreeDSecureUsageListFirestoreData(
  List<ThreeDSecureUsageStruct>? threeDSecureUsages,
) =>
    threeDSecureUsages
        ?.map((e) => getThreeDSecureUsageFirestoreData(e, true))
        .toList() ??
    [];
