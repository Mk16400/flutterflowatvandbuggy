// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BillingDetailsStruct extends FFFirebaseStruct {
  BillingDetailsStruct({
    String? email,
    String? name,
    int? phone,
    AddressStruct? address,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _email = email,
        _name = name,
        _phone = phone,
        _address = address,
        super(firestoreUtilData);

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "phone" field.
  int? _phone;
  int get phone => _phone ?? 0;
  set phone(int? val) => _phone = val;

  void incrementPhone(int amount) => phone = phone + amount;

  bool hasPhone() => _phone != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  set address(AddressStruct? val) => _address = val;

  void updateAddress(Function(AddressStruct) updateFn) {
    updateFn(_address ??= AddressStruct());
  }

  bool hasAddress() => _address != null;

  static BillingDetailsStruct fromMap(Map<String, dynamic> data) =>
      BillingDetailsStruct(
        email: data['email'] as String?,
        name: data['name'] as String?,
        phone: castToType<int>(data['phone']),
        address: AddressStruct.maybeFromMap(data['address']),
      );

  static BillingDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? BillingDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'email': _email,
        'name': _name,
        'phone': _phone,
        'address': _address?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.int,
        ),
        'address': serializeParam(
          _address,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static BillingDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      BillingDetailsStruct(
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.int,
          false,
        ),
        address: deserializeStructParam(
          data['address'],
          ParamType.DataStruct,
          false,
          structBuilder: AddressStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'BillingDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BillingDetailsStruct &&
        email == other.email &&
        name == other.name &&
        phone == other.phone &&
        address == other.address;
  }

  @override
  int get hashCode => const ListEquality().hash([email, name, phone, address]);
}

BillingDetailsStruct createBillingDetailsStruct({
  String? email,
  String? name,
  int? phone,
  AddressStruct? address,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BillingDetailsStruct(
      email: email,
      name: name,
      phone: phone,
      address: address ?? (clearUnsetFields ? AddressStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BillingDetailsStruct? updateBillingDetailsStruct(
  BillingDetailsStruct? billingDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    billingDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBillingDetailsStructData(
  Map<String, dynamic> firestoreData,
  BillingDetailsStruct? billingDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (billingDetails == null) {
    return;
  }
  if (billingDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && billingDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final billingDetailsData =
      getBillingDetailsFirestoreData(billingDetails, forFieldValue);
  final nestedData =
      billingDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = billingDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBillingDetailsFirestoreData(
  BillingDetailsStruct? billingDetails, [
  bool forFieldValue = false,
]) {
  if (billingDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(billingDetails.toMap());

  // Handle nested data for "address" field.
  addAddressStructData(
    firestoreData,
    billingDetails.hasAddress() ? billingDetails.address : null,
    'address',
    forFieldValue,
  );

  // Add any Firestore field values
  billingDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBillingDetailsListFirestoreData(
  List<BillingDetailsStruct>? billingDetailss,
) =>
    billingDetailss
        ?.map((e) => getBillingDetailsFirestoreData(e, true))
        .toList() ??
    [];
