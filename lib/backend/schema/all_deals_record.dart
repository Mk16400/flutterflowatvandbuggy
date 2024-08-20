import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllDealsRecord extends FirestoreRecord {
  AllDealsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  bool hasDuration() => _duration != null;

  // "FeatureVehicleUid" field.
  String? _featureVehicleUid;
  String get featureVehicleUid => _featureVehicleUid ?? '';
  bool hasFeatureVehicleUid() => _featureVehicleUid != null;

  // "Manufacturer" field.
  String? _manufacturer;
  String get manufacturer => _manufacturer ?? '';
  bool hasManufacturer() => _manufacturer != null;

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

  // "Price" field.
  String? _price;
  String get price => _price ?? '';
  bool hasPrice() => _price != null;

  // "Seats" field.
  String? _seats;
  String get seats => _seats ?? '';
  bool hasSeats() => _seats != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "companyUid" field.
  String? _companyUid;
  String get companyUid => _companyUid ?? '';
  bool hasCompanyUid() => _companyUid != null;

  // "expiry_date" field.
  DateTime? _expiryDate;
  DateTime? get expiryDate => _expiryDate;
  bool hasExpiryDate() => _expiryDate != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  bool hasSlug() => _slug != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "updated_by" field.
  String? _updatedBy;
  String get updatedBy => _updatedBy ?? '';
  bool hasUpdatedBy() => _updatedBy != null;

  // "Images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "vehicle_rating" field.
  double? _vehicleRating;
  double get vehicleRating => _vehicleRating ?? 0.0;
  bool hasVehicleRating() => _vehicleRating != null;

  // "ImagesIds" field.
  List<String>? _imagesIds;
  List<String> get imagesIds => _imagesIds ?? const [];
  bool hasImagesIds() => _imagesIds != null;

  void _initializeFields() {
    _duration = snapshotData['Duration'] as String?;
    _featureVehicleUid = snapshotData['FeatureVehicleUid'] as String?;
    _manufacturer = snapshotData['Manufacturer'] as String?;
    _model = snapshotData['Model'] as String?;
    _name = snapshotData['Name'] as String?;
    _nameLowercase = snapshotData['NameLowercase'] as String?;
    _price = snapshotData['Price'] as String?;
    _seats = snapshotData['Seats'] as String?;
    _type = snapshotData['Type'] as String?;
    _companyName = snapshotData['companyName'] as String?;
    _companyUid = snapshotData['companyUid'] as String?;
    _expiryDate = snapshotData['expiry_date'] as DateTime?;
    _slug = snapshotData['slug'] as String?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _updatedBy = snapshotData['updated_by'] as String?;
    _images = getDataList(snapshotData['Images']);
    _vehicleRating = castToType<double>(snapshotData['vehicle_rating']);
    _imagesIds = getDataList(snapshotData['ImagesIds']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('allDeals');

  static Stream<AllDealsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AllDealsRecord.fromSnapshot(s));

  static Future<AllDealsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AllDealsRecord.fromSnapshot(s));

  static AllDealsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AllDealsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllDealsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllDealsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllDealsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AllDealsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAllDealsRecordData({
  String? duration,
  String? featureVehicleUid,
  String? manufacturer,
  String? model,
  String? name,
  String? nameLowercase,
  String? price,
  String? seats,
  String? type,
  String? companyName,
  String? companyUid,
  DateTime? expiryDate,
  String? slug,
  DateTime? startDate,
  DateTime? timestamp,
  DateTime? updatedAt,
  String? updatedBy,
  double? vehicleRating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Duration': duration,
      'FeatureVehicleUid': featureVehicleUid,
      'Manufacturer': manufacturer,
      'Model': model,
      'Name': name,
      'NameLowercase': nameLowercase,
      'Price': price,
      'Seats': seats,
      'Type': type,
      'companyName': companyName,
      'companyUid': companyUid,
      'expiry_date': expiryDate,
      'slug': slug,
      'start_date': startDate,
      'timestamp': timestamp,
      'updated_at': updatedAt,
      'updated_by': updatedBy,
      'vehicle_rating': vehicleRating,
    }.withoutNulls,
  );

  return firestoreData;
}

class AllDealsRecordDocumentEquality implements Equality<AllDealsRecord> {
  const AllDealsRecordDocumentEquality();

  @override
  bool equals(AllDealsRecord? e1, AllDealsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.duration == e2?.duration &&
        e1?.featureVehicleUid == e2?.featureVehicleUid &&
        e1?.manufacturer == e2?.manufacturer &&
        e1?.model == e2?.model &&
        e1?.name == e2?.name &&
        e1?.nameLowercase == e2?.nameLowercase &&
        e1?.price == e2?.price &&
        e1?.seats == e2?.seats &&
        e1?.type == e2?.type &&
        e1?.companyName == e2?.companyName &&
        e1?.companyUid == e2?.companyUid &&
        e1?.expiryDate == e2?.expiryDate &&
        e1?.slug == e2?.slug &&
        e1?.startDate == e2?.startDate &&
        e1?.timestamp == e2?.timestamp &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.updatedBy == e2?.updatedBy &&
        listEquality.equals(e1?.images, e2?.images) &&
        e1?.vehicleRating == e2?.vehicleRating &&
        listEquality.equals(e1?.imagesIds, e2?.imagesIds);
  }

  @override
  int hash(AllDealsRecord? e) => const ListEquality().hash([
        e?.duration,
        e?.featureVehicleUid,
        e?.manufacturer,
        e?.model,
        e?.name,
        e?.nameLowercase,
        e?.price,
        e?.seats,
        e?.type,
        e?.companyName,
        e?.companyUid,
        e?.expiryDate,
        e?.slug,
        e?.startDate,
        e?.timestamp,
        e?.updatedAt,
        e?.updatedBy,
        e?.images,
        e?.vehicleRating,
        e?.imagesIds
      ]);

  @override
  bool isValidKey(Object? o) => o is AllDealsRecord;
}
