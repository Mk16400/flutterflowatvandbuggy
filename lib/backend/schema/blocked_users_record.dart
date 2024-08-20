import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlockedUsersRecord extends FirestoreRecord {
  BlockedUsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "blocked_at" field.
  DateTime? _blockedAt;
  DateTime? get blockedAt => _blockedAt;
  bool hasBlockedAt() => _blockedAt != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "user_type" field.
  String? _userType;
  String get userType => _userType ?? '';
  bool hasUserType() => _userType != null;

  void _initializeFields() {
    _blockedAt = snapshotData['blocked_at'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _uid = snapshotData['uid'] as String?;
    _userType = snapshotData['user_type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blockedUsers');

  static Stream<BlockedUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BlockedUsersRecord.fromSnapshot(s));

  static Future<BlockedUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BlockedUsersRecord.fromSnapshot(s));

  static BlockedUsersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BlockedUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BlockedUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BlockedUsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BlockedUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BlockedUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBlockedUsersRecordData({
  DateTime? blockedAt,
  String? phoneNumber,
  String? uid,
  String? userType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'blocked_at': blockedAt,
      'phone_number': phoneNumber,
      'uid': uid,
      'user_type': userType,
    }.withoutNulls,
  );

  return firestoreData;
}

class BlockedUsersRecordDocumentEquality
    implements Equality<BlockedUsersRecord> {
  const BlockedUsersRecordDocumentEquality();

  @override
  bool equals(BlockedUsersRecord? e1, BlockedUsersRecord? e2) {
    return e1?.blockedAt == e2?.blockedAt &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.uid == e2?.uid &&
        e1?.userType == e2?.userType;
  }

  @override
  int hash(BlockedUsersRecord? e) => const ListEquality()
      .hash([e?.blockedAt, e?.phoneNumber, e?.uid, e?.userType]);

  @override
  bool isValidKey(Object? o) => o is BlockedUsersRecord;
}
