import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cartItem" field.
  String? _cartItem;
  String get cartItem => _cartItem ?? '';
  bool hasCartItem() => _cartItem != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  bool hasAmount() => _amount != null;

  // "buggyID" field.
  String? _buggyID;
  String get buggyID => _buggyID ?? '';
  bool hasBuggyID() => _buggyID != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "endTime" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  bool hasEndTime() => _endTime != null;

  // "endTimeDate" field.
  String? _endTimeDate;
  String get endTimeDate => _endTimeDate ?? '';
  bool hasEndTimeDate() => _endTimeDate != null;

  // "formattedDateTime" field.
  String? _formattedDateTime;
  String get formattedDateTime => _formattedDateTime ?? '';
  bool hasFormattedDateTime() => _formattedDateTime != null;

  // "images" field.
  String? _images;
  String get images => _images ?? '';
  bool hasImages() => _images != null;

  // "latitude" field.
  int? _latitude;
  int get latitude => _latitude ?? 0;
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  int? _longitude;
  int get longitude => _longitude ?? 0;
  bool hasLongitude() => _longitude != null;

  // "manufacturer" field.
  String? _manufacturer;
  String get manufacturer => _manufacturer ?? '';
  bool hasManufacturer() => _manufacturer != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "plateNumberWithImages" field.
  String? _plateNumberWithImages;
  String get plateNumberWithImages => _plateNumberWithImages ?? '';
  bool hasPlateNumberWithImages() => _plateNumberWithImages != null;

  // "quantity" field.
  String? _quantity;
  String get quantity => _quantity ?? '';
  bool hasQuantity() => _quantity != null;

  // "scheduleId" field.
  String? _scheduleId;
  String get scheduleId => _scheduleId ?? '';
  bool hasScheduleId() => _scheduleId != null;

  // "seats" field.
  String? _seats;
  String get seats => _seats ?? '';
  bool hasSeats() => _seats != null;

  // "serviceFees" field.
  String? _serviceFees;
  String get serviceFees => _serviceFees ?? '';
  bool hasServiceFees() => _serviceFees != null;

  // "slotIndex" field.
  String? _slotIndex;
  String get slotIndex => _slotIndex ?? '';
  bool hasSlotIndex() => _slotIndex != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  bool hasSlug() => _slug != null;

  // "startTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  bool hasStartTime() => _startTime != null;

  // "startTimeDate" field.
  String? _startTimeDate;
  String get startTimeDate => _startTimeDate ?? '';
  bool hasStartTimeDate() => _startTimeDate != null;

  // "totalSlots" field.
  int? _totalSlots;
  int get totalSlots => _totalSlots ?? 0;
  bool hasTotalSlots() => _totalSlots != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "vatTax" field.
  int? _vatTax;
  int get vatTax => _vatTax ?? 0;
  bool hasVatTax() => _vatTax != null;

  // "vehicleRatings" field.
  int? _vehicleRatings;
  int get vehicleRatings => _vehicleRatings ?? 0;
  bool hasVehicleRatings() => _vehicleRatings != null;

  void _initializeFields() {
    _cartItem = snapshotData['cartItem'] as String?;
    _address = snapshotData['address'] as String?;
    _amount = snapshotData['amount'] as String?;
    _buggyID = snapshotData['buggyID'] as String?;
    _companyName = snapshotData['companyName'] as String?;
    _duration = snapshotData['duration'] as String?;
    _endTime = snapshotData['endTime'] as String?;
    _endTimeDate = snapshotData['endTimeDate'] as String?;
    _formattedDateTime = snapshotData['formattedDateTime'] as String?;
    _images = snapshotData['images'] as String?;
    _latitude = castToType<int>(snapshotData['latitude']);
    _longitude = castToType<int>(snapshotData['longitude']);
    _manufacturer = snapshotData['manufacturer'] as String?;
    _model = snapshotData['model'] as String?;
    _name = snapshotData['name'] as String?;
    _plateNumberWithImages = snapshotData['plateNumberWithImages'] as String?;
    _quantity = snapshotData['quantity'] as String?;
    _scheduleId = snapshotData['scheduleId'] as String?;
    _seats = snapshotData['seats'] as String?;
    _serviceFees = snapshotData['serviceFees'] as String?;
    _slotIndex = snapshotData['slotIndex'] as String?;
    _slug = snapshotData['slug'] as String?;
    _startTime = snapshotData['startTime'] as String?;
    _startTimeDate = snapshotData['startTimeDate'] as String?;
    _totalSlots = castToType<int>(snapshotData['totalSlots']);
    _type = snapshotData['type'] as String?;
    _vatTax = castToType<int>(snapshotData['vatTax']);
    _vehicleRatings = castToType<int>(snapshotData['vehicleRatings']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  String? cartItem,
  String? address,
  String? amount,
  String? buggyID,
  String? companyName,
  String? duration,
  String? endTime,
  String? endTimeDate,
  String? formattedDateTime,
  String? images,
  int? latitude,
  int? longitude,
  String? manufacturer,
  String? model,
  String? name,
  String? plateNumberWithImages,
  String? quantity,
  String? scheduleId,
  String? seats,
  String? serviceFees,
  String? slotIndex,
  String? slug,
  String? startTime,
  String? startTimeDate,
  int? totalSlots,
  String? type,
  int? vatTax,
  int? vehicleRatings,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cartItem': cartItem,
      'address': address,
      'amount': amount,
      'buggyID': buggyID,
      'companyName': companyName,
      'duration': duration,
      'endTime': endTime,
      'endTimeDate': endTimeDate,
      'formattedDateTime': formattedDateTime,
      'images': images,
      'latitude': latitude,
      'longitude': longitude,
      'manufacturer': manufacturer,
      'model': model,
      'name': name,
      'plateNumberWithImages': plateNumberWithImages,
      'quantity': quantity,
      'scheduleId': scheduleId,
      'seats': seats,
      'serviceFees': serviceFees,
      'slotIndex': slotIndex,
      'slug': slug,
      'startTime': startTime,
      'startTimeDate': startTimeDate,
      'totalSlots': totalSlots,
      'type': type,
      'vatTax': vatTax,
      'vehicleRatings': vehicleRatings,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.cartItem == e2?.cartItem &&
        e1?.address == e2?.address &&
        e1?.amount == e2?.amount &&
        e1?.buggyID == e2?.buggyID &&
        e1?.companyName == e2?.companyName &&
        e1?.duration == e2?.duration &&
        e1?.endTime == e2?.endTime &&
        e1?.endTimeDate == e2?.endTimeDate &&
        e1?.formattedDateTime == e2?.formattedDateTime &&
        e1?.images == e2?.images &&
        e1?.latitude == e2?.latitude &&
        e1?.longitude == e2?.longitude &&
        e1?.manufacturer == e2?.manufacturer &&
        e1?.model == e2?.model &&
        e1?.name == e2?.name &&
        e1?.plateNumberWithImages == e2?.plateNumberWithImages &&
        e1?.quantity == e2?.quantity &&
        e1?.scheduleId == e2?.scheduleId &&
        e1?.seats == e2?.seats &&
        e1?.serviceFees == e2?.serviceFees &&
        e1?.slotIndex == e2?.slotIndex &&
        e1?.slug == e2?.slug &&
        e1?.startTime == e2?.startTime &&
        e1?.startTimeDate == e2?.startTimeDate &&
        e1?.totalSlots == e2?.totalSlots &&
        e1?.type == e2?.type &&
        e1?.vatTax == e2?.vatTax &&
        e1?.vehicleRatings == e2?.vehicleRatings;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash([
        e?.cartItem,
        e?.address,
        e?.amount,
        e?.buggyID,
        e?.companyName,
        e?.duration,
        e?.endTime,
        e?.endTimeDate,
        e?.formattedDateTime,
        e?.images,
        e?.latitude,
        e?.longitude,
        e?.manufacturer,
        e?.model,
        e?.name,
        e?.plateNumberWithImages,
        e?.quantity,
        e?.scheduleId,
        e?.seats,
        e?.serviceFees,
        e?.slotIndex,
        e?.slug,
        e?.startTime,
        e?.startTimeDate,
        e?.totalSlots,
        e?.type,
        e?.vatTax,
        e?.vehicleRatings
      ]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
