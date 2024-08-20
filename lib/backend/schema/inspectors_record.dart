import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InspectorsRecord extends FirestoreRecord {
  InspectorsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "countryCode" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  bool hasCountryCode() => _countryCode != null;

  // "countryName" field.
  String? _countryName;
  String get countryName => _countryName ?? '';
  bool hasCountryName() => _countryName != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "pinCode" field.
  int? _pinCode;
  int get pinCode => _pinCode ?? 0;
  bool hasPinCode() => _pinCode != null;

  // "profileImage" field.
  String? _profileImage;
  String get profileImage => _profileImage ?? '';
  bool hasProfileImage() => _profileImage != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _countryCode = snapshotData['countryCode'] as String?;
    _countryName = snapshotData['countryName'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _createdBy = snapshotData['created_by'] as String?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
    _name = snapshotData['name'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _pinCode = castToType<int>(snapshotData['pinCode']);
    _profileImage = snapshotData['profileImage'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Inspectors');

  static Stream<InspectorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InspectorsRecord.fromSnapshot(s));

  static Future<InspectorsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InspectorsRecord.fromSnapshot(s));

  static InspectorsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InspectorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InspectorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InspectorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InspectorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InspectorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInspectorsRecordData({
  String? countryCode,
  String? countryName,
  DateTime? createdAt,
  String? createdBy,
  bool? isDeleted,
  String? name,
  String? phoneNumber,
  int? pinCode,
  String? profileImage,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'countryCode': countryCode,
      'countryName': countryName,
      'created_at': createdAt,
      'created_by': createdBy,
      'isDeleted': isDeleted,
      'name': name,
      'phoneNumber': phoneNumber,
      'pinCode': pinCode,
      'profileImage': profileImage,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class InspectorsRecordDocumentEquality implements Equality<InspectorsRecord> {
  const InspectorsRecordDocumentEquality();

  @override
  bool equals(InspectorsRecord? e1, InspectorsRecord? e2) {
    return e1?.countryCode == e2?.countryCode &&
        e1?.countryName == e2?.countryName &&
        e1?.createdAt == e2?.createdAt &&
        e1?.createdBy == e2?.createdBy &&
        e1?.isDeleted == e2?.isDeleted &&
        e1?.name == e2?.name &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.pinCode == e2?.pinCode &&
        e1?.profileImage == e2?.profileImage &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(InspectorsRecord? e) => const ListEquality().hash([
        e?.countryCode,
        e?.countryName,
        e?.createdAt,
        e?.createdBy,
        e?.isDeleted,
        e?.name,
        e?.phoneNumber,
        e?.pinCode,
        e?.profileImage,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is InspectorsRecord;
}
