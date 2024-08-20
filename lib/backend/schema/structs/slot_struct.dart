// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SlotStruct extends FFFirebaseStruct {
  SlotStruct({
    int? endTime,
    String? startTime,
    int? discountedPrice,
    String? originalPrice,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _endTime = endTime,
        _startTime = startTime,
        _discountedPrice = discountedPrice,
        _originalPrice = originalPrice,
        super(firestoreUtilData);

  // "EndTime" field.
  int? _endTime;
  int get endTime => _endTime ?? 0;
  set endTime(int? val) => _endTime = val;

  void incrementEndTime(int amount) => endTime = endTime + amount;

  bool hasEndTime() => _endTime != null;

  // "StartTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  set startTime(String? val) => _startTime = val;

  bool hasStartTime() => _startTime != null;

  // "discounted_price" field.
  int? _discountedPrice;
  int get discountedPrice => _discountedPrice ?? 0;
  set discountedPrice(int? val) => _discountedPrice = val;

  void incrementDiscountedPrice(int amount) =>
      discountedPrice = discountedPrice + amount;

  bool hasDiscountedPrice() => _discountedPrice != null;

  // "original_price" field.
  String? _originalPrice;
  String get originalPrice => _originalPrice ?? '';
  set originalPrice(String? val) => _originalPrice = val;

  bool hasOriginalPrice() => _originalPrice != null;

  static SlotStruct fromMap(Map<String, dynamic> data) => SlotStruct(
        endTime: castToType<int>(data['EndTime']),
        startTime: data['StartTime'] as String?,
        discountedPrice: castToType<int>(data['discounted_price']),
        originalPrice: data['original_price'] as String?,
      );

  static SlotStruct? maybeFromMap(dynamic data) =>
      data is Map ? SlotStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'EndTime': _endTime,
        'StartTime': _startTime,
        'discounted_price': _discountedPrice,
        'original_price': _originalPrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'EndTime': serializeParam(
          _endTime,
          ParamType.int,
        ),
        'StartTime': serializeParam(
          _startTime,
          ParamType.String,
        ),
        'discounted_price': serializeParam(
          _discountedPrice,
          ParamType.int,
        ),
        'original_price': serializeParam(
          _originalPrice,
          ParamType.String,
        ),
      }.withoutNulls;

  static SlotStruct fromSerializableMap(Map<String, dynamic> data) =>
      SlotStruct(
        endTime: deserializeParam(
          data['EndTime'],
          ParamType.int,
          false,
        ),
        startTime: deserializeParam(
          data['StartTime'],
          ParamType.String,
          false,
        ),
        discountedPrice: deserializeParam(
          data['discounted_price'],
          ParamType.int,
          false,
        ),
        originalPrice: deserializeParam(
          data['original_price'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SlotStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SlotStruct &&
        endTime == other.endTime &&
        startTime == other.startTime &&
        discountedPrice == other.discountedPrice &&
        originalPrice == other.originalPrice;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([endTime, startTime, discountedPrice, originalPrice]);
}

SlotStruct createSlotStruct({
  int? endTime,
  String? startTime,
  int? discountedPrice,
  String? originalPrice,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SlotStruct(
      endTime: endTime,
      startTime: startTime,
      discountedPrice: discountedPrice,
      originalPrice: originalPrice,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SlotStruct? updateSlotStruct(
  SlotStruct? slot, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    slot
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSlotStructData(
  Map<String, dynamic> firestoreData,
  SlotStruct? slot,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (slot == null) {
    return;
  }
  if (slot.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && slot.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final slotData = getSlotFirestoreData(slot, forFieldValue);
  final nestedData = slotData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = slot.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSlotFirestoreData(
  SlotStruct? slot, [
  bool forFieldValue = false,
]) {
  if (slot == null) {
    return {};
  }
  final firestoreData = mapToFirestore(slot.toMap());

  // Add any Firestore field values
  slot.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSlotListFirestoreData(
  List<SlotStruct>? slots,
) =>
    slots?.map((e) => getSlotFirestoreData(e, true)).toList() ?? [];
