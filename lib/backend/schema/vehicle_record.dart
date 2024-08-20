import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VehicleRecord extends FirestoreRecord {
  VehicleRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "CC" field.
  String? _cc;
  String get cc => _cc ?? '';
  bool hasCc() => _cc != null;

  // "Company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Seat" field.
  String? _seat;
  String get seat => _seat ?? '';
  bool hasSeat() => _seat != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "HomeLocation" field.
  List<HomeLocationStruct>? _homeLocation;
  List<HomeLocationStruct> get homeLocation => _homeLocation ?? const [];
  bool hasHomeLocation() => _homeLocation != null;

  // "IsRideEnded" field.
  bool? _isRideEnded;
  bool get isRideEnded => _isRideEnded ?? false;
  bool hasIsRideEnded() => _isRideEnded != null;

  // "IsEnded" field.
  bool? _isEnded;
  bool get isEnded => _isEnded ?? false;
  bool hasIsEnded() => _isEnded != null;

  // "IsRideStarted" field.
  bool? _isRideStarted;
  bool get isRideStarted => _isRideStarted ?? false;
  bool hasIsRideStarted() => _isRideStarted != null;

  // "IsStarted" field.
  bool? _isStarted;
  bool get isStarted => _isStarted ?? false;
  bool hasIsStarted() => _isStarted != null;

  // "LiveLocation" field.
  List<HomeLocationStruct>? _liveLocation;
  List<HomeLocationStruct> get liveLocation => _liveLocation ?? const [];
  bool hasLiveLocation() => _liveLocation != null;

  // "Location" field.
  List<HomeLocationStruct>? _location;
  List<HomeLocationStruct> get location => _location ?? const [];
  bool hasLocation() => _location != null;

  // "PaymentDate" field.
  String? _paymentDate;
  String get paymentDate => _paymentDate ?? '';
  bool hasPaymentDate() => _paymentDate != null;

  // "PhoneNumber" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "PickUpFormattedAddress" field.
  String? _pickUpFormattedAddress;
  String get pickUpFormattedAddress => _pickUpFormattedAddress ?? '';
  bool hasPickUpFormattedAddress() => _pickUpFormattedAddress != null;

  // "PickUpLatitude" field.
  String? _pickUpLatitude;
  String get pickUpLatitude => _pickUpLatitude ?? '';
  bool hasPickUpLatitude() => _pickUpLatitude != null;

  // "PickUpLongitude" field.
  String? _pickUpLongitude;
  String get pickUpLongitude => _pickUpLongitude ?? '';
  bool hasPickUpLongitude() => _pickUpLongitude != null;

  // "PlatesNumbers" field.
  int? _platesNumbers;
  int get platesNumbers => _platesNumbers ?? 0;
  bool hasPlatesNumbers() => _platesNumbers != null;

  // "Quantity" field.
  String? _quantity;
  String get quantity => _quantity ?? '';
  bool hasQuantity() => _quantity != null;

  // "ReservationNumber" field.
  String? _reservationNumber;
  String get reservationNumber => _reservationNumber ?? '';
  bool hasReservationNumber() => _reservationNumber != null;

  // "Review" field.
  List<ReviewStruct>? _review;
  List<ReviewStruct> get review => _review ?? const [];
  bool hasReview() => _review != null;

  // "Slot" field.
  List<SlotStruct>? _slot;
  List<SlotStruct> get slot => _slot ?? const [];
  bool hasSlot() => _slot != null;

  // "TotalAmount" field.
  String? _totalAmount;
  String get totalAmount => _totalAmount ?? '';
  bool hasTotalAmount() => _totalAmount != null;

  // "Uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "VehicleReplacementatIndex" field.
  String? _vehicleReplacementatIndex;
  String get vehicleReplacementatIndex => _vehicleReplacementatIndex ?? '';
  bool hasVehicleReplacementatIndex() => _vehicleReplacementatIndex != null;

  // "abortedAt" field.
  DateTime? _abortedAt;
  DateTime? get abortedAt => _abortedAt;
  bool hasAbortedAt() => _abortedAt != null;

  // "acceptedRide" field.
  bool? _acceptedRide;
  bool get acceptedRide => _acceptedRide ?? false;
  bool hasAcceptedRide() => _acceptedRide != null;

  // "bookingAmount" field.
  int? _bookingAmount;
  int get bookingAmount => _bookingAmount ?? 0;
  bool hasBookingAmount() => _bookingAmount != null;

  // "cancelled_feedback" field.
  String? _cancelledFeedback;
  String get cancelledFeedback => _cancelledFeedback ?? '';
  bool hasCancelledFeedback() => _cancelledFeedback != null;

  // "charge_id" field.
  String? _chargeId;
  String get chargeId => _chargeId ?? '';
  bool hasChargeId() => _chargeId != null;

  // "driver_uid" field.
  String? _driverUid;
  String get driverUid => _driverUid ?? '';
  bool hasDriverUid() => _driverUid != null;

  // "durationMinutes" field.
  String? _durationMinutes;
  String get durationMinutes => _durationMinutes ?? '';
  bool hasDurationMinutes() => _durationMinutes != null;

  // "estTax" field.
  double? _estTax;
  double get estTax => _estTax ?? 0.0;
  bool hasEstTax() => _estTax != null;

  // "isRead" field.
  bool? _isRead;
  bool get isRead => _isRead ?? false;
  bool hasIsRead() => _isRead != null;

  // "isVehicleScanned" field.
  bool? _isVehicleScanned;
  bool get isVehicleScanned => _isVehicleScanned ?? false;
  bool hasIsVehicleScanned() => _isVehicleScanned != null;

  // "is_cancelled" field.
  bool? _isCancelled;
  bool get isCancelled => _isCancelled ?? false;
  bool hasIsCancelled() => _isCancelled != null;

  // "is_refunded" field.
  bool? _isRefunded;
  bool get isRefunded => _isRefunded ?? false;
  bool hasIsRefunded() => _isRefunded != null;

  // "manufacturer_name" field.
  String? _manufacturerName;
  String get manufacturerName => _manufacturerName ?? '';
  bool hasManufacturerName() => _manufacturerName != null;

  // "refundedAmount" field.
  String? _refundedAmount;
  String get refundedAmount => _refundedAmount ?? '';
  bool hasRefundedAmount() => _refundedAmount != null;

  // "pickUpDropUpAmount" field.
  String? _pickUpDropUpAmount;
  String get pickUpDropUpAmount => _pickUpDropUpAmount ?? '';
  bool hasPickUpDropUpAmount() => _pickUpDropUpAmount != null;

  // "ride_status" field.
  String? _rideStatus;
  String get rideStatus => _rideStatus ?? '';
  bool hasRideStatus() => _rideStatus != null;

  // "serviceFees" field.
  String? _serviceFees;
  String get serviceFees => _serviceFees ?? '';
  bool hasServiceFees() => _serviceFees != null;

  // "skipApp" field.
  bool? _skipApp;
  bool get skipApp => _skipApp ?? false;
  bool hasSkipApp() => _skipApp != null;

  // "submitReview" field.
  bool? _submitReview;
  bool get submitReview => _submitReview ?? false;
  bool hasSubmitReview() => _submitReview != null;

  // "transportationDetails" field.
  String? _transportationDetails;
  String get transportationDetails => _transportationDetails ?? '';
  bool hasTransportationDetails() => _transportationDetails != null;

  // "vehicle_rating" field.
  int? _vehicleRating;
  int get vehicleRating => _vehicleRating ?? 0;
  bool hasVehicleRating() => _vehicleRating != null;

  void _initializeFields() {
    _cc = snapshotData['CC'] as String?;
    _company = snapshotData['Company'] as String?;
    _description = snapshotData['Description'] as String?;
    _model = snapshotData['Model'] as String?;
    _name = snapshotData['Name'] as String?;
    _seat = snapshotData['Seat'] as String?;
    _type = snapshotData['Type'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _homeLocation = getStructList(
      snapshotData['HomeLocation'],
      HomeLocationStruct.fromMap,
    );
    _isRideEnded = snapshotData['IsRideEnded'] as bool?;
    _isEnded = snapshotData['IsEnded'] as bool?;
    _isRideStarted = snapshotData['IsRideStarted'] as bool?;
    _isStarted = snapshotData['IsStarted'] as bool?;
    _liveLocation = getStructList(
      snapshotData['LiveLocation'],
      HomeLocationStruct.fromMap,
    );
    _location = getStructList(
      snapshotData['Location'],
      HomeLocationStruct.fromMap,
    );
    _paymentDate = snapshotData['PaymentDate'] as String?;
    _phoneNumber = castToType<int>(snapshotData['PhoneNumber']);
    _pickUpFormattedAddress = snapshotData['PickUpFormattedAddress'] as String?;
    _pickUpLatitude = snapshotData['PickUpLatitude'] as String?;
    _pickUpLongitude = snapshotData['PickUpLongitude'] as String?;
    _platesNumbers = castToType<int>(snapshotData['PlatesNumbers']);
    _quantity = snapshotData['Quantity'] as String?;
    _reservationNumber = snapshotData['ReservationNumber'] as String?;
    _review = getStructList(
      snapshotData['Review'],
      ReviewStruct.fromMap,
    );
    _slot = getStructList(
      snapshotData['Slot'],
      SlotStruct.fromMap,
    );
    _totalAmount = snapshotData['TotalAmount'] as String?;
    _uid = snapshotData['Uid'] as String?;
    _vehicleReplacementatIndex =
        snapshotData['VehicleReplacementatIndex'] as String?;
    _abortedAt = snapshotData['abortedAt'] as DateTime?;
    _acceptedRide = snapshotData['acceptedRide'] as bool?;
    _bookingAmount = castToType<int>(snapshotData['bookingAmount']);
    _cancelledFeedback = snapshotData['cancelled_feedback'] as String?;
    _chargeId = snapshotData['charge_id'] as String?;
    _driverUid = snapshotData['driver_uid'] as String?;
    _durationMinutes = snapshotData['durationMinutes'] as String?;
    _estTax = castToType<double>(snapshotData['estTax']);
    _isRead = snapshotData['isRead'] as bool?;
    _isVehicleScanned = snapshotData['isVehicleScanned'] as bool?;
    _isCancelled = snapshotData['is_cancelled'] as bool?;
    _isRefunded = snapshotData['is_refunded'] as bool?;
    _manufacturerName = snapshotData['manufacturer_name'] as String?;
    _refundedAmount = snapshotData['refundedAmount'] as String?;
    _pickUpDropUpAmount = snapshotData['pickUpDropUpAmount'] as String?;
    _rideStatus = snapshotData['ride_status'] as String?;
    _serviceFees = snapshotData['serviceFees'] as String?;
    _skipApp = snapshotData['skipApp'] as bool?;
    _submitReview = snapshotData['submitReview'] as bool?;
    _transportationDetails = snapshotData['transportationDetails'] as String?;
    _vehicleRating = castToType<int>(snapshotData['vehicle_rating']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Vehicle');

  static Stream<VehicleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VehicleRecord.fromSnapshot(s));

  static Future<VehicleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VehicleRecord.fromSnapshot(s));

  static VehicleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VehicleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VehicleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VehicleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VehicleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VehicleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVehicleRecordData({
  String? cc,
  String? company,
  String? description,
  String? model,
  String? name,
  String? seat,
  String? type,
  DateTime? timestamp,
  bool? isRideEnded,
  bool? isEnded,
  bool? isRideStarted,
  bool? isStarted,
  String? paymentDate,
  int? phoneNumber,
  String? pickUpFormattedAddress,
  String? pickUpLatitude,
  String? pickUpLongitude,
  int? platesNumbers,
  String? quantity,
  String? reservationNumber,
  String? totalAmount,
  String? uid,
  String? vehicleReplacementatIndex,
  DateTime? abortedAt,
  bool? acceptedRide,
  int? bookingAmount,
  String? cancelledFeedback,
  String? chargeId,
  String? driverUid,
  String? durationMinutes,
  double? estTax,
  bool? isRead,
  bool? isVehicleScanned,
  bool? isCancelled,
  bool? isRefunded,
  String? manufacturerName,
  String? refundedAmount,
  String? pickUpDropUpAmount,
  String? rideStatus,
  String? serviceFees,
  bool? skipApp,
  bool? submitReview,
  String? transportationDetails,
  int? vehicleRating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CC': cc,
      'Company': company,
      'Description': description,
      'Model': model,
      'Name': name,
      'Seat': seat,
      'Type': type,
      'timestamp': timestamp,
      'IsRideEnded': isRideEnded,
      'IsEnded': isEnded,
      'IsRideStarted': isRideStarted,
      'IsStarted': isStarted,
      'PaymentDate': paymentDate,
      'PhoneNumber': phoneNumber,
      'PickUpFormattedAddress': pickUpFormattedAddress,
      'PickUpLatitude': pickUpLatitude,
      'PickUpLongitude': pickUpLongitude,
      'PlatesNumbers': platesNumbers,
      'Quantity': quantity,
      'ReservationNumber': reservationNumber,
      'TotalAmount': totalAmount,
      'Uid': uid,
      'VehicleReplacementatIndex': vehicleReplacementatIndex,
      'abortedAt': abortedAt,
      'acceptedRide': acceptedRide,
      'bookingAmount': bookingAmount,
      'cancelled_feedback': cancelledFeedback,
      'charge_id': chargeId,
      'driver_uid': driverUid,
      'durationMinutes': durationMinutes,
      'estTax': estTax,
      'isRead': isRead,
      'isVehicleScanned': isVehicleScanned,
      'is_cancelled': isCancelled,
      'is_refunded': isRefunded,
      'manufacturer_name': manufacturerName,
      'refundedAmount': refundedAmount,
      'pickUpDropUpAmount': pickUpDropUpAmount,
      'ride_status': rideStatus,
      'serviceFees': serviceFees,
      'skipApp': skipApp,
      'submitReview': submitReview,
      'transportationDetails': transportationDetails,
      'vehicle_rating': vehicleRating,
    }.withoutNulls,
  );

  return firestoreData;
}

class VehicleRecordDocumentEquality implements Equality<VehicleRecord> {
  const VehicleRecordDocumentEquality();

  @override
  bool equals(VehicleRecord? e1, VehicleRecord? e2) {
    const listEquality = ListEquality();
    return e1?.cc == e2?.cc &&
        e1?.company == e2?.company &&
        e1?.description == e2?.description &&
        e1?.model == e2?.model &&
        e1?.name == e2?.name &&
        e1?.seat == e2?.seat &&
        e1?.type == e2?.type &&
        e1?.timestamp == e2?.timestamp &&
        listEquality.equals(e1?.homeLocation, e2?.homeLocation) &&
        e1?.isRideEnded == e2?.isRideEnded &&
        e1?.isEnded == e2?.isEnded &&
        e1?.isRideStarted == e2?.isRideStarted &&
        e1?.isStarted == e2?.isStarted &&
        listEquality.equals(e1?.liveLocation, e2?.liveLocation) &&
        listEquality.equals(e1?.location, e2?.location) &&
        e1?.paymentDate == e2?.paymentDate &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.pickUpFormattedAddress == e2?.pickUpFormattedAddress &&
        e1?.pickUpLatitude == e2?.pickUpLatitude &&
        e1?.pickUpLongitude == e2?.pickUpLongitude &&
        e1?.platesNumbers == e2?.platesNumbers &&
        e1?.quantity == e2?.quantity &&
        e1?.reservationNumber == e2?.reservationNumber &&
        listEquality.equals(e1?.review, e2?.review) &&
        listEquality.equals(e1?.slot, e2?.slot) &&
        e1?.totalAmount == e2?.totalAmount &&
        e1?.uid == e2?.uid &&
        e1?.vehicleReplacementatIndex == e2?.vehicleReplacementatIndex &&
        e1?.abortedAt == e2?.abortedAt &&
        e1?.acceptedRide == e2?.acceptedRide &&
        e1?.bookingAmount == e2?.bookingAmount &&
        e1?.cancelledFeedback == e2?.cancelledFeedback &&
        e1?.chargeId == e2?.chargeId &&
        e1?.driverUid == e2?.driverUid &&
        e1?.durationMinutes == e2?.durationMinutes &&
        e1?.estTax == e2?.estTax &&
        e1?.isRead == e2?.isRead &&
        e1?.isVehicleScanned == e2?.isVehicleScanned &&
        e1?.isCancelled == e2?.isCancelled &&
        e1?.isRefunded == e2?.isRefunded &&
        e1?.manufacturerName == e2?.manufacturerName &&
        e1?.refundedAmount == e2?.refundedAmount &&
        e1?.pickUpDropUpAmount == e2?.pickUpDropUpAmount &&
        e1?.rideStatus == e2?.rideStatus &&
        e1?.serviceFees == e2?.serviceFees &&
        e1?.skipApp == e2?.skipApp &&
        e1?.submitReview == e2?.submitReview &&
        e1?.transportationDetails == e2?.transportationDetails &&
        e1?.vehicleRating == e2?.vehicleRating;
  }

  @override
  int hash(VehicleRecord? e) => const ListEquality().hash([
        e?.cc,
        e?.company,
        e?.description,
        e?.model,
        e?.name,
        e?.seat,
        e?.type,
        e?.timestamp,
        e?.homeLocation,
        e?.isRideEnded,
        e?.isEnded,
        e?.isRideStarted,
        e?.isStarted,
        e?.liveLocation,
        e?.location,
        e?.paymentDate,
        e?.phoneNumber,
        e?.pickUpFormattedAddress,
        e?.pickUpLatitude,
        e?.pickUpLongitude,
        e?.platesNumbers,
        e?.quantity,
        e?.reservationNumber,
        e?.review,
        e?.slot,
        e?.totalAmount,
        e?.uid,
        e?.vehicleReplacementatIndex,
        e?.abortedAt,
        e?.acceptedRide,
        e?.bookingAmount,
        e?.cancelledFeedback,
        e?.chargeId,
        e?.driverUid,
        e?.durationMinutes,
        e?.estTax,
        e?.isRead,
        e?.isVehicleScanned,
        e?.isCancelled,
        e?.isRefunded,
        e?.manufacturerName,
        e?.refundedAmount,
        e?.pickUpDropUpAmount,
        e?.rideStatus,
        e?.serviceFees,
        e?.skipApp,
        e?.submitReview,
        e?.transportationDetails,
        e?.vehicleRating
      ]);

  @override
  bool isValidKey(Object? o) => o is VehicleRecord;
}
