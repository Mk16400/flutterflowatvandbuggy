import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OffRoadVehiclesRecord extends FirestoreRecord {
  OffRoadVehiclesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

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

  // "Duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "Location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "Model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "NameLowercase" field.
  String? _nameLowercase;
  String get nameLowercase => _nameLowercase ?? '';
  bool hasNameLowercase() => _nameLowercase != null;

  // "Rating" field.
  String? _rating;
  String get rating => _rating ?? '';
  bool hasRating() => _rating != null;

  // "Schedule" field.
  String? _schedule;
  String get schedule => _schedule ?? '';
  bool hasSchedule() => _schedule != null;

  // "Seats" field.
  String? _seats;
  String get seats => _seats ?? '';
  bool hasSeats() => _seats != null;

  // "Timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "companyLowercase" field.
  String? _companyLowercase;
  String get companyLowercase => _companyLowercase ?? '';
  bool hasCompanyLowercase() => _companyLowercase != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "companyNameLowerCase" field.
  String? _companyNameLowerCase;
  String get companyNameLowerCase => _companyNameLowerCase ?? '';
  bool hasCompanyNameLowerCase() => _companyNameLowerCase != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  bool hasCreatedAt() => _createdAt != null;

  // "disable" field.
  String? _disable;
  String get disable => _disable ?? '';
  bool hasDisable() => _disable != null;

  // "disablePlateNumber" field.
  String? _disablePlateNumber;
  String get disablePlateNumber => _disablePlateNumber ?? '';
  bool hasDisablePlateNumber() => _disablePlateNumber != null;

  // "is120MinExclusive" field.
  bool? _is120MinExclusive;
  bool get is120MinExclusive => _is120MinExclusive ?? false;
  bool hasIs120MinExclusive() => _is120MinExclusive != null;

  // "is180MinExclusive" field.
  bool? _is180MinExclusive;
  bool get is180MinExclusive => _is180MinExclusive ?? false;
  bool hasIs180MinExclusive() => _is180MinExclusive != null;

  // "is30MinExclusive" field.
  bool? _is30MinExclusive;
  bool get is30MinExclusive => _is30MinExclusive ?? false;
  bool hasIs30MinExclusive() => _is30MinExclusive != null;

  // "is60MinExclusive" field.
  bool? _is60MinExclusive;
  bool get is60MinExclusive => _is60MinExclusive ?? false;
  bool hasIs60MinExclusive() => _is60MinExclusive != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "isScheduleAdded" field.
  bool? _isScheduleAdded;
  bool get isScheduleAdded => _isScheduleAdded ?? false;
  bool hasIsScheduleAdded() => _isScheduleAdded != null;

  // "isUpdated" field.
  bool? _isUpdated;
  bool get isUpdated => _isUpdated ?? false;
  bool hasIsUpdated() => _isUpdated != null;

  // "scheduleEndDate" field.
  bool? _scheduleEndDate;
  bool get scheduleEndDate => _scheduleEndDate ?? false;
  bool hasScheduleEndDate() => _scheduleEndDate != null;

  // "scheduleEndTime" field.
  bool? _scheduleEndTime;
  bool get scheduleEndTime => _scheduleEndTime ?? false;
  bool hasScheduleEndTime() => _scheduleEndTime != null;

  // "scheduleHighestPrice" field.
  bool? _scheduleHighestPrice;
  bool get scheduleHighestPrice => _scheduleHighestPrice ?? false;
  bool hasScheduleHighestPrice() => _scheduleHighestPrice != null;

  // "scheduleHighestPriceDate" field.
  bool? _scheduleHighestPriceDate;
  bool get scheduleHighestPriceDate => _scheduleHighestPriceDate ?? false;
  bool hasScheduleHighestPriceDate() => _scheduleHighestPriceDate != null;

  // "scheduleLowestPrice" field.
  bool? _scheduleLowestPrice;
  bool get scheduleLowestPrice => _scheduleLowestPrice ?? false;
  bool hasScheduleLowestPrice() => _scheduleLowestPrice != null;

  // "scheduleLowestPriceDate" field.
  bool? _scheduleLowestPriceDate;
  bool get scheduleLowestPriceDate => _scheduleLowestPriceDate ?? false;
  bool hasScheduleLowestPriceDate() => _scheduleLowestPriceDate != null;

  // "scheduleStartDate" field.
  String? _scheduleStartDate;
  String get scheduleStartDate => _scheduleStartDate ?? '';
  bool hasScheduleStartDate() => _scheduleStartDate != null;

  // "scheduleStartTime" field.
  DateTime? _scheduleStartTime;
  DateTime? get scheduleStartTime => _scheduleStartTime;
  bool hasScheduleStartTime() => _scheduleStartTime != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  bool hasSlug() => _slug != null;

  // "supervisorUid" field.
  String? _supervisorUid;
  String get supervisorUid => _supervisorUid ?? '';
  bool hasSupervisorUid() => _supervisorUid != null;

  // "vehicle_rating" field.
  String? _vehicleRating;
  String get vehicleRating => _vehicleRating ?? '';
  bool hasVehicleRating() => _vehicleRating != null;

  void _initializeFields() {
    _address = snapshotData['Address'] as String?;
    _cc = snapshotData['CC'] as String?;
    _company = snapshotData['Company'] as String?;
    _description = snapshotData['Description'] as String?;
    _duration = snapshotData['Duration'] as String?;
    _location = snapshotData['Location'] as String?;
    _model = snapshotData['Model'] as String?;
    _name = snapshotData['Name'] as String?;
    _nameLowercase = snapshotData['NameLowercase'] as String?;
    _rating = snapshotData['Rating'] as String?;
    _schedule = snapshotData['Schedule'] as String?;
    _seats = snapshotData['Seats'] as String?;
    _timestamp = snapshotData['Timestamp'] as DateTime?;
    _type = snapshotData['Type'] as String?;
    _companyLowercase = snapshotData['companyLowercase'] as String?;
    _companyName = snapshotData['companyName'] as String?;
    _companyNameLowerCase = snapshotData['companyNameLowerCase'] as String?;
    _createdAt = snapshotData['created_at'] as String?;
    _disable = snapshotData['disable'] as String?;
    _disablePlateNumber = snapshotData['disablePlateNumber'] as String?;
    _is120MinExclusive = snapshotData['is120MinExclusive'] as bool?;
    _is180MinExclusive = snapshotData['is180MinExclusive'] as bool?;
    _is30MinExclusive = snapshotData['is30MinExclusive'] as bool?;
    _is60MinExclusive = snapshotData['is60MinExclusive'] as bool?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
    _isScheduleAdded = snapshotData['isScheduleAdded'] as bool?;
    _isUpdated = snapshotData['isUpdated'] as bool?;
    _scheduleEndDate = snapshotData['scheduleEndDate'] as bool?;
    _scheduleEndTime = snapshotData['scheduleEndTime'] as bool?;
    _scheduleHighestPrice = snapshotData['scheduleHighestPrice'] as bool?;
    _scheduleHighestPriceDate =
        snapshotData['scheduleHighestPriceDate'] as bool?;
    _scheduleLowestPrice = snapshotData['scheduleLowestPrice'] as bool?;
    _scheduleLowestPriceDate = snapshotData['scheduleLowestPriceDate'] as bool?;
    _scheduleStartDate = snapshotData['scheduleStartDate'] as String?;
    _scheduleStartTime = snapshotData['scheduleStartTime'] as DateTime?;
    _slug = snapshotData['slug'] as String?;
    _supervisorUid = snapshotData['supervisorUid'] as String?;
    _vehicleRating = snapshotData['vehicle_rating'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('offRoadVehicles');

  static Stream<OffRoadVehiclesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OffRoadVehiclesRecord.fromSnapshot(s));

  static Future<OffRoadVehiclesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OffRoadVehiclesRecord.fromSnapshot(s));

  static OffRoadVehiclesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OffRoadVehiclesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OffRoadVehiclesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OffRoadVehiclesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OffRoadVehiclesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OffRoadVehiclesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOffRoadVehiclesRecordData({
  String? address,
  String? cc,
  String? company,
  String? description,
  String? duration,
  String? location,
  String? model,
  String? name,
  String? nameLowercase,
  String? rating,
  String? schedule,
  String? seats,
  DateTime? timestamp,
  String? type,
  String? companyLowercase,
  String? companyName,
  String? companyNameLowerCase,
  String? createdAt,
  String? disable,
  String? disablePlateNumber,
  bool? is120MinExclusive,
  bool? is180MinExclusive,
  bool? is30MinExclusive,
  bool? is60MinExclusive,
  bool? isDeleted,
  bool? isScheduleAdded,
  bool? isUpdated,
  bool? scheduleEndDate,
  bool? scheduleEndTime,
  bool? scheduleHighestPrice,
  bool? scheduleHighestPriceDate,
  bool? scheduleLowestPrice,
  bool? scheduleLowestPriceDate,
  String? scheduleStartDate,
  DateTime? scheduleStartTime,
  String? slug,
  String? supervisorUid,
  String? vehicleRating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Address': address,
      'CC': cc,
      'Company': company,
      'Description': description,
      'Duration': duration,
      'Location': location,
      'Model': model,
      'Name': name,
      'NameLowercase': nameLowercase,
      'Rating': rating,
      'Schedule': schedule,
      'Seats': seats,
      'Timestamp': timestamp,
      'Type': type,
      'companyLowercase': companyLowercase,
      'companyName': companyName,
      'companyNameLowerCase': companyNameLowerCase,
      'created_at': createdAt,
      'disable': disable,
      'disablePlateNumber': disablePlateNumber,
      'is120MinExclusive': is120MinExclusive,
      'is180MinExclusive': is180MinExclusive,
      'is30MinExclusive': is30MinExclusive,
      'is60MinExclusive': is60MinExclusive,
      'isDeleted': isDeleted,
      'isScheduleAdded': isScheduleAdded,
      'isUpdated': isUpdated,
      'scheduleEndDate': scheduleEndDate,
      'scheduleEndTime': scheduleEndTime,
      'scheduleHighestPrice': scheduleHighestPrice,
      'scheduleHighestPriceDate': scheduleHighestPriceDate,
      'scheduleLowestPrice': scheduleLowestPrice,
      'scheduleLowestPriceDate': scheduleLowestPriceDate,
      'scheduleStartDate': scheduleStartDate,
      'scheduleStartTime': scheduleStartTime,
      'slug': slug,
      'supervisorUid': supervisorUid,
      'vehicle_rating': vehicleRating,
    }.withoutNulls,
  );

  return firestoreData;
}

class OffRoadVehiclesRecordDocumentEquality
    implements Equality<OffRoadVehiclesRecord> {
  const OffRoadVehiclesRecordDocumentEquality();

  @override
  bool equals(OffRoadVehiclesRecord? e1, OffRoadVehiclesRecord? e2) {
    return e1?.address == e2?.address &&
        e1?.cc == e2?.cc &&
        e1?.company == e2?.company &&
        e1?.description == e2?.description &&
        e1?.duration == e2?.duration &&
        e1?.location == e2?.location &&
        e1?.model == e2?.model &&
        e1?.name == e2?.name &&
        e1?.nameLowercase == e2?.nameLowercase &&
        e1?.rating == e2?.rating &&
        e1?.schedule == e2?.schedule &&
        e1?.seats == e2?.seats &&
        e1?.timestamp == e2?.timestamp &&
        e1?.type == e2?.type &&
        e1?.companyLowercase == e2?.companyLowercase &&
        e1?.companyName == e2?.companyName &&
        e1?.companyNameLowerCase == e2?.companyNameLowerCase &&
        e1?.createdAt == e2?.createdAt &&
        e1?.disable == e2?.disable &&
        e1?.disablePlateNumber == e2?.disablePlateNumber &&
        e1?.is120MinExclusive == e2?.is120MinExclusive &&
        e1?.is180MinExclusive == e2?.is180MinExclusive &&
        e1?.is30MinExclusive == e2?.is30MinExclusive &&
        e1?.is60MinExclusive == e2?.is60MinExclusive &&
        e1?.isDeleted == e2?.isDeleted &&
        e1?.isScheduleAdded == e2?.isScheduleAdded &&
        e1?.isUpdated == e2?.isUpdated &&
        e1?.scheduleEndDate == e2?.scheduleEndDate &&
        e1?.scheduleEndTime == e2?.scheduleEndTime &&
        e1?.scheduleHighestPrice == e2?.scheduleHighestPrice &&
        e1?.scheduleHighestPriceDate == e2?.scheduleHighestPriceDate &&
        e1?.scheduleLowestPrice == e2?.scheduleLowestPrice &&
        e1?.scheduleLowestPriceDate == e2?.scheduleLowestPriceDate &&
        e1?.scheduleStartDate == e2?.scheduleStartDate &&
        e1?.scheduleStartTime == e2?.scheduleStartTime &&
        e1?.slug == e2?.slug &&
        e1?.supervisorUid == e2?.supervisorUid &&
        e1?.vehicleRating == e2?.vehicleRating;
  }

  @override
  int hash(OffRoadVehiclesRecord? e) => const ListEquality().hash([
        e?.address,
        e?.cc,
        e?.company,
        e?.description,
        e?.duration,
        e?.location,
        e?.model,
        e?.name,
        e?.nameLowercase,
        e?.rating,
        e?.schedule,
        e?.seats,
        e?.timestamp,
        e?.type,
        e?.companyLowercase,
        e?.companyName,
        e?.companyNameLowerCase,
        e?.createdAt,
        e?.disable,
        e?.disablePlateNumber,
        e?.is120MinExclusive,
        e?.is180MinExclusive,
        e?.is30MinExclusive,
        e?.is60MinExclusive,
        e?.isDeleted,
        e?.isScheduleAdded,
        e?.isUpdated,
        e?.scheduleEndDate,
        e?.scheduleEndTime,
        e?.scheduleHighestPrice,
        e?.scheduleHighestPriceDate,
        e?.scheduleLowestPrice,
        e?.scheduleLowestPriceDate,
        e?.scheduleStartDate,
        e?.scheduleStartTime,
        e?.slug,
        e?.supervisorUid,
        e?.vehicleRating
      ]);

  @override
  bool isValidKey(Object? o) => o is OffRoadVehiclesRecord;
}
