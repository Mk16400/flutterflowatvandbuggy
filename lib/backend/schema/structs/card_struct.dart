// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CardStruct extends FFFirebaseStruct {
  CardStruct({
    String? brand,
    ChecksStruct? checks,
    NetworksStruct? networks,
    ThreeDSecureUsageStruct? threeDSecureUsage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _brand = brand,
        _checks = checks,
        _networks = networks,
        _threeDSecureUsage = threeDSecureUsage,
        super(firestoreUtilData);

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  set brand(String? val) => _brand = val;

  bool hasBrand() => _brand != null;

  // "checks" field.
  ChecksStruct? _checks;
  ChecksStruct get checks => _checks ?? ChecksStruct();
  set checks(ChecksStruct? val) => _checks = val;

  void updateChecks(Function(ChecksStruct) updateFn) {
    updateFn(_checks ??= ChecksStruct());
  }

  bool hasChecks() => _checks != null;

  // "networks" field.
  NetworksStruct? _networks;
  NetworksStruct get networks => _networks ?? NetworksStruct();
  set networks(NetworksStruct? val) => _networks = val;

  void updateNetworks(Function(NetworksStruct) updateFn) {
    updateFn(_networks ??= NetworksStruct());
  }

  bool hasNetworks() => _networks != null;

  // "three_d_secure_usage" field.
  ThreeDSecureUsageStruct? _threeDSecureUsage;
  ThreeDSecureUsageStruct get threeDSecureUsage =>
      _threeDSecureUsage ?? ThreeDSecureUsageStruct();
  set threeDSecureUsage(ThreeDSecureUsageStruct? val) =>
      _threeDSecureUsage = val;

  void updateThreeDSecureUsage(Function(ThreeDSecureUsageStruct) updateFn) {
    updateFn(_threeDSecureUsage ??= ThreeDSecureUsageStruct());
  }

  bool hasThreeDSecureUsage() => _threeDSecureUsage != null;

  static CardStruct fromMap(Map<String, dynamic> data) => CardStruct(
        brand: data['brand'] as String?,
        checks: ChecksStruct.maybeFromMap(data['checks']),
        networks: NetworksStruct.maybeFromMap(data['networks']),
        threeDSecureUsage:
            ThreeDSecureUsageStruct.maybeFromMap(data['three_d_secure_usage']),
      );

  static CardStruct? maybeFromMap(dynamic data) =>
      data is Map ? CardStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'brand': _brand,
        'checks': _checks?.toMap(),
        'networks': _networks?.toMap(),
        'three_d_secure_usage': _threeDSecureUsage?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'brand': serializeParam(
          _brand,
          ParamType.String,
        ),
        'checks': serializeParam(
          _checks,
          ParamType.DataStruct,
        ),
        'networks': serializeParam(
          _networks,
          ParamType.DataStruct,
        ),
        'three_d_secure_usage': serializeParam(
          _threeDSecureUsage,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CardStruct fromSerializableMap(Map<String, dynamic> data) =>
      CardStruct(
        brand: deserializeParam(
          data['brand'],
          ParamType.String,
          false,
        ),
        checks: deserializeStructParam(
          data['checks'],
          ParamType.DataStruct,
          false,
          structBuilder: ChecksStruct.fromSerializableMap,
        ),
        networks: deserializeStructParam(
          data['networks'],
          ParamType.DataStruct,
          false,
          structBuilder: NetworksStruct.fromSerializableMap,
        ),
        threeDSecureUsage: deserializeStructParam(
          data['three_d_secure_usage'],
          ParamType.DataStruct,
          false,
          structBuilder: ThreeDSecureUsageStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CardStruct &&
        brand == other.brand &&
        checks == other.checks &&
        networks == other.networks &&
        threeDSecureUsage == other.threeDSecureUsage;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([brand, checks, networks, threeDSecureUsage]);
}

CardStruct createCardStruct({
  String? brand,
  ChecksStruct? checks,
  NetworksStruct? networks,
  ThreeDSecureUsageStruct? threeDSecureUsage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CardStruct(
      brand: brand,
      checks: checks ?? (clearUnsetFields ? ChecksStruct() : null),
      networks: networks ?? (clearUnsetFields ? NetworksStruct() : null),
      threeDSecureUsage: threeDSecureUsage ??
          (clearUnsetFields ? ThreeDSecureUsageStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CardStruct? updateCardStruct(
  CardStruct? card, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    card
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCardStructData(
  Map<String, dynamic> firestoreData,
  CardStruct? card,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (card == null) {
    return;
  }
  if (card.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && card.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cardData = getCardFirestoreData(card, forFieldValue);
  final nestedData = cardData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = card.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCardFirestoreData(
  CardStruct? card, [
  bool forFieldValue = false,
]) {
  if (card == null) {
    return {};
  }
  final firestoreData = mapToFirestore(card.toMap());

  // Handle nested data for "checks" field.
  addChecksStructData(
    firestoreData,
    card.hasChecks() ? card.checks : null,
    'checks',
    forFieldValue,
  );

  // Handle nested data for "networks" field.
  addNetworksStructData(
    firestoreData,
    card.hasNetworks() ? card.networks : null,
    'networks',
    forFieldValue,
  );

  // Handle nested data for "three_d_secure_usage" field.
  addThreeDSecureUsageStructData(
    firestoreData,
    card.hasThreeDSecureUsage() ? card.threeDSecureUsage : null,
    'three_d_secure_usage',
    forFieldValue,
  );

  // Add any Firestore field values
  card.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCardListFirestoreData(
  List<CardStruct>? cards,
) =>
    cards?.map((e) => getCardFirestoreData(e, true)).toList() ?? [];
