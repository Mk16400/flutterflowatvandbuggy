// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentMethodStruct extends FFFirebaseStruct {
  PaymentMethodStruct({
    String? allowRedisplay,
    int? created,
    String? customer,
    String? id,
    bool? livemode,
    CardStruct? card,
    BillingDetailsStruct? billingDetails,
    MetadataStruct? metadata,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _allowRedisplay = allowRedisplay,
        _created = created,
        _customer = customer,
        _id = id,
        _livemode = livemode,
        _card = card,
        _billingDetails = billingDetails,
        _metadata = metadata,
        super(firestoreUtilData);

  // "allow_redisplay" field.
  String? _allowRedisplay;
  String get allowRedisplay => _allowRedisplay ?? '';
  set allowRedisplay(String? val) => _allowRedisplay = val;

  bool hasAllowRedisplay() => _allowRedisplay != null;

  // "created" field.
  int? _created;
  int get created => _created ?? 0;
  set created(int? val) => _created = val;

  void incrementCreated(int amount) => created = created + amount;

  bool hasCreated() => _created != null;

  // "customer" field.
  String? _customer;
  String get customer => _customer ?? '';
  set customer(String? val) => _customer = val;

  bool hasCustomer() => _customer != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "livemode" field.
  bool? _livemode;
  bool get livemode => _livemode ?? false;
  set livemode(bool? val) => _livemode = val;

  bool hasLivemode() => _livemode != null;

  // "card" field.
  CardStruct? _card;
  CardStruct get card => _card ?? CardStruct();
  set card(CardStruct? val) => _card = val;

  void updateCard(Function(CardStruct) updateFn) {
    updateFn(_card ??= CardStruct());
  }

  bool hasCard() => _card != null;

  // "billing_details" field.
  BillingDetailsStruct? _billingDetails;
  BillingDetailsStruct get billingDetails =>
      _billingDetails ?? BillingDetailsStruct();
  set billingDetails(BillingDetailsStruct? val) => _billingDetails = val;

  void updateBillingDetails(Function(BillingDetailsStruct) updateFn) {
    updateFn(_billingDetails ??= BillingDetailsStruct());
  }

  bool hasBillingDetails() => _billingDetails != null;

  // "metadata" field.
  MetadataStruct? _metadata;
  MetadataStruct get metadata => _metadata ?? MetadataStruct();
  set metadata(MetadataStruct? val) => _metadata = val;

  void updateMetadata(Function(MetadataStruct) updateFn) {
    updateFn(_metadata ??= MetadataStruct());
  }

  bool hasMetadata() => _metadata != null;

  static PaymentMethodStruct fromMap(Map<String, dynamic> data) =>
      PaymentMethodStruct(
        allowRedisplay: data['allow_redisplay'] as String?,
        created: castToType<int>(data['created']),
        customer: data['customer'] as String?,
        id: data['id'] as String?,
        livemode: data['livemode'] as bool?,
        card: CardStruct.maybeFromMap(data['card']),
        billingDetails:
            BillingDetailsStruct.maybeFromMap(data['billing_details']),
        metadata: MetadataStruct.maybeFromMap(data['metadata']),
      );

  static PaymentMethodStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentMethodStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'allow_redisplay': _allowRedisplay,
        'created': _created,
        'customer': _customer,
        'id': _id,
        'livemode': _livemode,
        'card': _card?.toMap(),
        'billing_details': _billingDetails?.toMap(),
        'metadata': _metadata?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'allow_redisplay': serializeParam(
          _allowRedisplay,
          ParamType.String,
        ),
        'created': serializeParam(
          _created,
          ParamType.int,
        ),
        'customer': serializeParam(
          _customer,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'livemode': serializeParam(
          _livemode,
          ParamType.bool,
        ),
        'card': serializeParam(
          _card,
          ParamType.DataStruct,
        ),
        'billing_details': serializeParam(
          _billingDetails,
          ParamType.DataStruct,
        ),
        'metadata': serializeParam(
          _metadata,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PaymentMethodStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentMethodStruct(
        allowRedisplay: deserializeParam(
          data['allow_redisplay'],
          ParamType.String,
          false,
        ),
        created: deserializeParam(
          data['created'],
          ParamType.int,
          false,
        ),
        customer: deserializeParam(
          data['customer'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        livemode: deserializeParam(
          data['livemode'],
          ParamType.bool,
          false,
        ),
        card: deserializeStructParam(
          data['card'],
          ParamType.DataStruct,
          false,
          structBuilder: CardStruct.fromSerializableMap,
        ),
        billingDetails: deserializeStructParam(
          data['billing_details'],
          ParamType.DataStruct,
          false,
          structBuilder: BillingDetailsStruct.fromSerializableMap,
        ),
        metadata: deserializeStructParam(
          data['metadata'],
          ParamType.DataStruct,
          false,
          structBuilder: MetadataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PaymentMethodStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentMethodStruct &&
        allowRedisplay == other.allowRedisplay &&
        created == other.created &&
        customer == other.customer &&
        id == other.id &&
        livemode == other.livemode &&
        card == other.card &&
        billingDetails == other.billingDetails &&
        metadata == other.metadata;
  }

  @override
  int get hashCode => const ListEquality().hash([
        allowRedisplay,
        created,
        customer,
        id,
        livemode,
        card,
        billingDetails,
        metadata
      ]);
}

PaymentMethodStruct createPaymentMethodStruct({
  String? allowRedisplay,
  int? created,
  String? customer,
  String? id,
  bool? livemode,
  CardStruct? card,
  BillingDetailsStruct? billingDetails,
  MetadataStruct? metadata,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PaymentMethodStruct(
      allowRedisplay: allowRedisplay,
      created: created,
      customer: customer,
      id: id,
      livemode: livemode,
      card: card ?? (clearUnsetFields ? CardStruct() : null),
      billingDetails:
          billingDetails ?? (clearUnsetFields ? BillingDetailsStruct() : null),
      metadata: metadata ?? (clearUnsetFields ? MetadataStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PaymentMethodStruct? updatePaymentMethodStruct(
  PaymentMethodStruct? paymentMethod, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    paymentMethod
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPaymentMethodStructData(
  Map<String, dynamic> firestoreData,
  PaymentMethodStruct? paymentMethod,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (paymentMethod == null) {
    return;
  }
  if (paymentMethod.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && paymentMethod.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final paymentMethodData =
      getPaymentMethodFirestoreData(paymentMethod, forFieldValue);
  final nestedData =
      paymentMethodData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = paymentMethod.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPaymentMethodFirestoreData(
  PaymentMethodStruct? paymentMethod, [
  bool forFieldValue = false,
]) {
  if (paymentMethod == null) {
    return {};
  }
  final firestoreData = mapToFirestore(paymentMethod.toMap());

  // Handle nested data for "card" field.
  addCardStructData(
    firestoreData,
    paymentMethod.hasCard() ? paymentMethod.card : null,
    'card',
    forFieldValue,
  );

  // Handle nested data for "billing_details" field.
  addBillingDetailsStructData(
    firestoreData,
    paymentMethod.hasBillingDetails() ? paymentMethod.billingDetails : null,
    'billing_details',
    forFieldValue,
  );

  // Handle nested data for "metadata" field.
  addMetadataStructData(
    firestoreData,
    paymentMethod.hasMetadata() ? paymentMethod.metadata : null,
    'metadata',
    forFieldValue,
  );

  // Add any Firestore field values
  paymentMethod.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentMethodListFirestoreData(
  List<PaymentMethodStruct>? paymentMethods,
) =>
    paymentMethods
        ?.map((e) => getPaymentMethodFirestoreData(e, true))
        .toList() ??
    [];
