// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ChecksStruct extends FFFirebaseStruct {
  ChecksStruct({
    String? addressLine1Check,
    String? addressPostalCodeCheck,
    String? cvcCheck,
    String? country,
    String? displayBrand,
    int? expMonth,
    int? expYear,
    String? fingerprint,
    String? funding,
    String? generatedFrom,
    String? last4,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _addressLine1Check = addressLine1Check,
        _addressPostalCodeCheck = addressPostalCodeCheck,
        _cvcCheck = cvcCheck,
        _country = country,
        _displayBrand = displayBrand,
        _expMonth = expMonth,
        _expYear = expYear,
        _fingerprint = fingerprint,
        _funding = funding,
        _generatedFrom = generatedFrom,
        _last4 = last4,
        super(firestoreUtilData);

  // "address_line1_check" field.
  String? _addressLine1Check;
  String get addressLine1Check => _addressLine1Check ?? '';
  set addressLine1Check(String? val) => _addressLine1Check = val;

  bool hasAddressLine1Check() => _addressLine1Check != null;

  // "address_postal_code_check" field.
  String? _addressPostalCodeCheck;
  String get addressPostalCodeCheck => _addressPostalCodeCheck ?? '';
  set addressPostalCodeCheck(String? val) => _addressPostalCodeCheck = val;

  bool hasAddressPostalCodeCheck() => _addressPostalCodeCheck != null;

  // "cvc_check" field.
  String? _cvcCheck;
  String get cvcCheck => _cvcCheck ?? '';
  set cvcCheck(String? val) => _cvcCheck = val;

  bool hasCvcCheck() => _cvcCheck != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  set country(String? val) => _country = val;

  bool hasCountry() => _country != null;

  // "display_brand" field.
  String? _displayBrand;
  String get displayBrand => _displayBrand ?? '';
  set displayBrand(String? val) => _displayBrand = val;

  bool hasDisplayBrand() => _displayBrand != null;

  // "exp_month" field.
  int? _expMonth;
  int get expMonth => _expMonth ?? 0;
  set expMonth(int? val) => _expMonth = val;

  void incrementExpMonth(int amount) => expMonth = expMonth + amount;

  bool hasExpMonth() => _expMonth != null;

  // "exp_year" field.
  int? _expYear;
  int get expYear => _expYear ?? 0;
  set expYear(int? val) => _expYear = val;

  void incrementExpYear(int amount) => expYear = expYear + amount;

  bool hasExpYear() => _expYear != null;

  // "fingerprint" field.
  String? _fingerprint;
  String get fingerprint => _fingerprint ?? '';
  set fingerprint(String? val) => _fingerprint = val;

  bool hasFingerprint() => _fingerprint != null;

  // "funding" field.
  String? _funding;
  String get funding => _funding ?? '';
  set funding(String? val) => _funding = val;

  bool hasFunding() => _funding != null;

  // "generated_from" field.
  String? _generatedFrom;
  String get generatedFrom => _generatedFrom ?? '';
  set generatedFrom(String? val) => _generatedFrom = val;

  bool hasGeneratedFrom() => _generatedFrom != null;

  // "last4" field.
  String? _last4;
  String get last4 => _last4 ?? '';
  set last4(String? val) => _last4 = val;

  bool hasLast4() => _last4 != null;

  static ChecksStruct fromMap(Map<String, dynamic> data) => ChecksStruct(
        addressLine1Check: data['address_line1_check'] as String?,
        addressPostalCodeCheck: data['address_postal_code_check'] as String?,
        cvcCheck: data['cvc_check'] as String?,
        country: data['country'] as String?,
        displayBrand: data['display_brand'] as String?,
        expMonth: castToType<int>(data['exp_month']),
        expYear: castToType<int>(data['exp_year']),
        fingerprint: data['fingerprint'] as String?,
        funding: data['funding'] as String?,
        generatedFrom: data['generated_from'] as String?,
        last4: data['last4'] as String?,
      );

  static ChecksStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChecksStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'address_line1_check': _addressLine1Check,
        'address_postal_code_check': _addressPostalCodeCheck,
        'cvc_check': _cvcCheck,
        'country': _country,
        'display_brand': _displayBrand,
        'exp_month': _expMonth,
        'exp_year': _expYear,
        'fingerprint': _fingerprint,
        'funding': _funding,
        'generated_from': _generatedFrom,
        'last4': _last4,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'address_line1_check': serializeParam(
          _addressLine1Check,
          ParamType.String,
        ),
        'address_postal_code_check': serializeParam(
          _addressPostalCodeCheck,
          ParamType.String,
        ),
        'cvc_check': serializeParam(
          _cvcCheck,
          ParamType.String,
        ),
        'country': serializeParam(
          _country,
          ParamType.String,
        ),
        'display_brand': serializeParam(
          _displayBrand,
          ParamType.String,
        ),
        'exp_month': serializeParam(
          _expMonth,
          ParamType.int,
        ),
        'exp_year': serializeParam(
          _expYear,
          ParamType.int,
        ),
        'fingerprint': serializeParam(
          _fingerprint,
          ParamType.String,
        ),
        'funding': serializeParam(
          _funding,
          ParamType.String,
        ),
        'generated_from': serializeParam(
          _generatedFrom,
          ParamType.String,
        ),
        'last4': serializeParam(
          _last4,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChecksStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChecksStruct(
        addressLine1Check: deserializeParam(
          data['address_line1_check'],
          ParamType.String,
          false,
        ),
        addressPostalCodeCheck: deserializeParam(
          data['address_postal_code_check'],
          ParamType.String,
          false,
        ),
        cvcCheck: deserializeParam(
          data['cvc_check'],
          ParamType.String,
          false,
        ),
        country: deserializeParam(
          data['country'],
          ParamType.String,
          false,
        ),
        displayBrand: deserializeParam(
          data['display_brand'],
          ParamType.String,
          false,
        ),
        expMonth: deserializeParam(
          data['exp_month'],
          ParamType.int,
          false,
        ),
        expYear: deserializeParam(
          data['exp_year'],
          ParamType.int,
          false,
        ),
        fingerprint: deserializeParam(
          data['fingerprint'],
          ParamType.String,
          false,
        ),
        funding: deserializeParam(
          data['funding'],
          ParamType.String,
          false,
        ),
        generatedFrom: deserializeParam(
          data['generated_from'],
          ParamType.String,
          false,
        ),
        last4: deserializeParam(
          data['last4'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChecksStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChecksStruct &&
        addressLine1Check == other.addressLine1Check &&
        addressPostalCodeCheck == other.addressPostalCodeCheck &&
        cvcCheck == other.cvcCheck &&
        country == other.country &&
        displayBrand == other.displayBrand &&
        expMonth == other.expMonth &&
        expYear == other.expYear &&
        fingerprint == other.fingerprint &&
        funding == other.funding &&
        generatedFrom == other.generatedFrom &&
        last4 == other.last4;
  }

  @override
  int get hashCode => const ListEquality().hash([
        addressLine1Check,
        addressPostalCodeCheck,
        cvcCheck,
        country,
        displayBrand,
        expMonth,
        expYear,
        fingerprint,
        funding,
        generatedFrom,
        last4
      ]);
}

ChecksStruct createChecksStruct({
  String? addressLine1Check,
  String? addressPostalCodeCheck,
  String? cvcCheck,
  String? country,
  String? displayBrand,
  int? expMonth,
  int? expYear,
  String? fingerprint,
  String? funding,
  String? generatedFrom,
  String? last4,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChecksStruct(
      addressLine1Check: addressLine1Check,
      addressPostalCodeCheck: addressPostalCodeCheck,
      cvcCheck: cvcCheck,
      country: country,
      displayBrand: displayBrand,
      expMonth: expMonth,
      expYear: expYear,
      fingerprint: fingerprint,
      funding: funding,
      generatedFrom: generatedFrom,
      last4: last4,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChecksStruct? updateChecksStruct(
  ChecksStruct? checks, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    checks
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChecksStructData(
  Map<String, dynamic> firestoreData,
  ChecksStruct? checks,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (checks == null) {
    return;
  }
  if (checks.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && checks.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final checksData = getChecksFirestoreData(checks, forFieldValue);
  final nestedData = checksData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = checks.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChecksFirestoreData(
  ChecksStruct? checks, [
  bool forFieldValue = false,
]) {
  if (checks == null) {
    return {};
  }
  final firestoreData = mapToFirestore(checks.toMap());

  // Add any Firestore field values
  checks.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChecksListFirestoreData(
  List<ChecksStruct>? checkss,
) =>
    checkss?.map((e) => getChecksFirestoreData(e, true)).toList() ?? [];
