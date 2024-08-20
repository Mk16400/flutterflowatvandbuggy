import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ArrivalDate" field.
  String? _arrivalDate;
  String get arrivalDate => _arrivalDate ?? '';
  bool hasArrivalDate() => _arrivalDate != null;

  // "BookingType" field.
  String? _bookingType;
  String get bookingType => _bookingType ?? '';
  bool hasBookingType() => _bookingType != null;

  // "BuggyModel" field.
  String? _buggyModel;
  String get buggyModel => _buggyModel ?? '';
  bool hasBuggyModel() => _buggyModel != null;

  // "BuggyName" field.
  String? _buggyName;
  String get buggyName => _buggyName ?? '';
  bool hasBuggyName() => _buggyName != null;

  // "BuggyUid" field.
  String? _buggyUid;
  String get buggyUid => _buggyUid ?? '';
  bool hasBuggyUid() => _buggyUid != null;

  // "CashierUid" field.
  String? _cashierUid;
  String get cashierUid => _cashierUid ?? '';
  bool hasCashierUid() => _cashierUid != null;

  // "ComapanyName" field.
  String? _comapanyName;
  String get comapanyName => _comapanyName ?? '';
  bool hasComapanyName() => _comapanyName != null;

  // "CompanyUid" field.
  String? _companyUid;
  String get companyUid => _companyUid ?? '';
  bool hasCompanyUid() => _companyUid != null;

  // "CountdownStartTime" field.
  DateTime? _countdownStartTime;
  DateTime? get countdownStartTime => _countdownStartTime;
  bool hasCountdownStartTime() => _countdownStartTime != null;

  // "Duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "FormattedAddress" field.
  String? _formattedAddress;
  String get formattedAddress => _formattedAddress ?? '';
  bool hasFormattedAddress() => _formattedAddress != null;

  // "IsRideEnded" field.
  bool? _isRideEnded;
  bool get isRideEnded => _isRideEnded ?? false;
  bool hasIsRideEnded() => _isRideEnded != null;

  // "IsRideStarted" field.
  bool? _isRideStarted;
  bool get isRideStarted => _isRideStarted ?? false;
  bool hasIsRideStarted() => _isRideStarted != null;

  // "IsEnded" field.
  bool? _isEnded;
  bool get isEnded => _isEnded ?? false;
  bool hasIsEnded() => _isEnded != null;

  // "IsStarted" field.
  bool? _isStarted;
  bool get isStarted => _isStarted ?? false;
  bool hasIsStarted() => _isStarted != null;

  // "PaymentDate" field.
  String? _paymentDate;
  String get paymentDate => _paymentDate ?? '';
  bool hasPaymentDate() => _paymentDate != null;

  // "PhoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
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

  // "PlateNumbers" field.
  List<String>? _plateNumbers;
  List<String> get plateNumbers => _plateNumbers ?? const [];
  bool hasPlateNumbers() => _plateNumbers != null;

  // "Quantity" field.
  String? _quantity;
  String get quantity => _quantity ?? '';
  bool hasQuantity() => _quantity != null;

  // "ReservationNumber" field.
  String? _reservationNumber;
  String get reservationNumber => _reservationNumber ?? '';
  bool hasReservationNumber() => _reservationNumber != null;

  // "ScanTime" field.
  DateTime? _scanTime;
  DateTime? get scanTime => _scanTime;
  bool hasScanTime() => _scanTime != null;

  // "SelectedServicesType" field.
  String? _selectedServicesType;
  String get selectedServicesType => _selectedServicesType ?? '';
  bool hasSelectedServicesType() => _selectedServicesType != null;

  // "HomeLocation" field.
  HomeLocationStruct? _homeLocation;
  HomeLocationStruct get homeLocation => _homeLocation ?? HomeLocationStruct();
  bool hasHomeLocation() => _homeLocation != null;

  // "LiveLocation" field.
  HomeLocationStruct? _liveLocation;
  HomeLocationStruct get liveLocation => _liveLocation ?? HomeLocationStruct();
  bool hasLiveLocation() => _liveLocation != null;

  // "Location" field.
  LocationStruct? _location;
  LocationStruct get location => _location ?? LocationStruct();
  bool hasLocation() => _location != null;

  // "Review" field.
  ReviewStruct? _review;
  ReviewStruct get review => _review ?? ReviewStruct();
  bool hasReview() => _review != null;

  // "payment_method" field.
  PaymentMethodStruct? _paymentMethod;
  PaymentMethodStruct get paymentMethod =>
      _paymentMethod ?? PaymentMethodStruct();
  bool hasPaymentMethod() => _paymentMethod != null;

  void _initializeFields() {
    _arrivalDate = snapshotData['ArrivalDate'] as String?;
    _bookingType = snapshotData['BookingType'] as String?;
    _buggyModel = snapshotData['BuggyModel'] as String?;
    _buggyName = snapshotData['BuggyName'] as String?;
    _buggyUid = snapshotData['BuggyUid'] as String?;
    _cashierUid = snapshotData['CashierUid'] as String?;
    _comapanyName = snapshotData['ComapanyName'] as String?;
    _companyUid = snapshotData['CompanyUid'] as String?;
    _countdownStartTime = snapshotData['CountdownStartTime'] as DateTime?;
    _duration = snapshotData['Duration'] as String?;
    _formattedAddress = snapshotData['FormattedAddress'] as String?;
    _isRideEnded = snapshotData['IsRideEnded'] as bool?;
    _isRideStarted = snapshotData['IsRideStarted'] as bool?;
    _isEnded = snapshotData['IsEnded'] as bool?;
    _isStarted = snapshotData['IsStarted'] as bool?;
    _paymentDate = snapshotData['PaymentDate'] as String?;
    _phoneNumber = snapshotData['PhoneNumber'] as String?;
    _pickUpFormattedAddress = snapshotData['PickUpFormattedAddress'] as String?;
    _pickUpLatitude = snapshotData['PickUpLatitude'] as String?;
    _pickUpLongitude = snapshotData['PickUpLongitude'] as String?;
    _plateNumbers = getDataList(snapshotData['PlateNumbers']);
    _quantity = snapshotData['Quantity'] as String?;
    _reservationNumber = snapshotData['ReservationNumber'] as String?;
    _scanTime = snapshotData['ScanTime'] as DateTime?;
    _selectedServicesType = snapshotData['SelectedServicesType'] as String?;
    _homeLocation =
        HomeLocationStruct.maybeFromMap(snapshotData['HomeLocation']);
    _liveLocation =
        HomeLocationStruct.maybeFromMap(snapshotData['LiveLocation']);
    _location = LocationStruct.maybeFromMap(snapshotData['Location']);
    _review = ReviewStruct.maybeFromMap(snapshotData['Review']);
    _paymentMethod =
        PaymentMethodStruct.maybeFromMap(snapshotData['payment_method']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  String? arrivalDate,
  String? bookingType,
  String? buggyModel,
  String? buggyName,
  String? buggyUid,
  String? cashierUid,
  String? comapanyName,
  String? companyUid,
  DateTime? countdownStartTime,
  String? duration,
  String? formattedAddress,
  bool? isRideEnded,
  bool? isRideStarted,
  bool? isEnded,
  bool? isStarted,
  String? paymentDate,
  String? phoneNumber,
  String? pickUpFormattedAddress,
  String? pickUpLatitude,
  String? pickUpLongitude,
  String? quantity,
  String? reservationNumber,
  DateTime? scanTime,
  String? selectedServicesType,
  HomeLocationStruct? homeLocation,
  HomeLocationStruct? liveLocation,
  LocationStruct? location,
  ReviewStruct? review,
  PaymentMethodStruct? paymentMethod,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ArrivalDate': arrivalDate,
      'BookingType': bookingType,
      'BuggyModel': buggyModel,
      'BuggyName': buggyName,
      'BuggyUid': buggyUid,
      'CashierUid': cashierUid,
      'ComapanyName': comapanyName,
      'CompanyUid': companyUid,
      'CountdownStartTime': countdownStartTime,
      'Duration': duration,
      'FormattedAddress': formattedAddress,
      'IsRideEnded': isRideEnded,
      'IsRideStarted': isRideStarted,
      'IsEnded': isEnded,
      'IsStarted': isStarted,
      'PaymentDate': paymentDate,
      'PhoneNumber': phoneNumber,
      'PickUpFormattedAddress': pickUpFormattedAddress,
      'PickUpLatitude': pickUpLatitude,
      'PickUpLongitude': pickUpLongitude,
      'Quantity': quantity,
      'ReservationNumber': reservationNumber,
      'ScanTime': scanTime,
      'SelectedServicesType': selectedServicesType,
      'HomeLocation': HomeLocationStruct().toMap(),
      'LiveLocation': HomeLocationStruct().toMap(),
      'Location': LocationStruct().toMap(),
      'Review': ReviewStruct().toMap(),
      'payment_method': PaymentMethodStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "HomeLocation" field.
  addHomeLocationStructData(firestoreData, homeLocation, 'HomeLocation');

  // Handle nested data for "LiveLocation" field.
  addHomeLocationStructData(firestoreData, liveLocation, 'LiveLocation');

  // Handle nested data for "Location" field.
  addLocationStructData(firestoreData, location, 'Location');

  // Handle nested data for "Review" field.
  addReviewStructData(firestoreData, review, 'Review');

  // Handle nested data for "payment_method" field.
  addPaymentMethodStructData(firestoreData, paymentMethod, 'payment_method');

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.arrivalDate == e2?.arrivalDate &&
        e1?.bookingType == e2?.bookingType &&
        e1?.buggyModel == e2?.buggyModel &&
        e1?.buggyName == e2?.buggyName &&
        e1?.buggyUid == e2?.buggyUid &&
        e1?.cashierUid == e2?.cashierUid &&
        e1?.comapanyName == e2?.comapanyName &&
        e1?.companyUid == e2?.companyUid &&
        e1?.countdownStartTime == e2?.countdownStartTime &&
        e1?.duration == e2?.duration &&
        e1?.formattedAddress == e2?.formattedAddress &&
        e1?.isRideEnded == e2?.isRideEnded &&
        e1?.isRideStarted == e2?.isRideStarted &&
        e1?.isEnded == e2?.isEnded &&
        e1?.isStarted == e2?.isStarted &&
        e1?.paymentDate == e2?.paymentDate &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.pickUpFormattedAddress == e2?.pickUpFormattedAddress &&
        e1?.pickUpLatitude == e2?.pickUpLatitude &&
        e1?.pickUpLongitude == e2?.pickUpLongitude &&
        listEquality.equals(e1?.plateNumbers, e2?.plateNumbers) &&
        e1?.quantity == e2?.quantity &&
        e1?.reservationNumber == e2?.reservationNumber &&
        e1?.scanTime == e2?.scanTime &&
        e1?.selectedServicesType == e2?.selectedServicesType &&
        e1?.homeLocation == e2?.homeLocation &&
        e1?.liveLocation == e2?.liveLocation &&
        e1?.location == e2?.location &&
        e1?.review == e2?.review &&
        e1?.paymentMethod == e2?.paymentMethod;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.arrivalDate,
        e?.bookingType,
        e?.buggyModel,
        e?.buggyName,
        e?.buggyUid,
        e?.cashierUid,
        e?.comapanyName,
        e?.companyUid,
        e?.countdownStartTime,
        e?.duration,
        e?.formattedAddress,
        e?.isRideEnded,
        e?.isRideStarted,
        e?.isEnded,
        e?.isStarted,
        e?.paymentDate,
        e?.phoneNumber,
        e?.pickUpFormattedAddress,
        e?.pickUpLatitude,
        e?.pickUpLongitude,
        e?.plateNumbers,
        e?.quantity,
        e?.reservationNumber,
        e?.scanTime,
        e?.selectedServicesType,
        e?.homeLocation,
        e?.liveLocation,
        e?.location,
        e?.review,
        e?.paymentMethod
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
