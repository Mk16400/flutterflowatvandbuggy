import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserOfBlogRecord extends FirestoreRecord {
  UserOfBlogRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password_hash" field.
  String? _passwordHash;
  String get passwordHash => _passwordHash ?? '';
  bool hasPasswordHash() => _passwordHash != null;

  // "profile_image" field.
  String? _profileImage;
  String get profileImage => _profileImage ?? '';
  bool hasProfileImage() => _profileImage != null;

  // "registered_date" field.
  String? _registeredDate;
  String get registeredDate => _registeredDate ?? '';
  bool hasRegisteredDate() => _registeredDate != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  void _initializeFields() {
    _bio = snapshotData['bio'] as String?;
    _email = snapshotData['email'] as String?;
    _passwordHash = snapshotData['password_hash'] as String?;
    _profileImage = snapshotData['profile_image'] as String?;
    _registeredDate = snapshotData['registered_date'] as String?;
    _username = snapshotData['username'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user-of-blog');

  static Stream<UserOfBlogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserOfBlogRecord.fromSnapshot(s));

  static Future<UserOfBlogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserOfBlogRecord.fromSnapshot(s));

  static UserOfBlogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserOfBlogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserOfBlogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserOfBlogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserOfBlogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserOfBlogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserOfBlogRecordData({
  String? bio,
  String? email,
  String? passwordHash,
  String? profileImage,
  String? registeredDate,
  String? username,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bio': bio,
      'email': email,
      'password_hash': passwordHash,
      'profile_image': profileImage,
      'registered_date': registeredDate,
      'username': username,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserOfBlogRecordDocumentEquality implements Equality<UserOfBlogRecord> {
  const UserOfBlogRecordDocumentEquality();

  @override
  bool equals(UserOfBlogRecord? e1, UserOfBlogRecord? e2) {
    return e1?.bio == e2?.bio &&
        e1?.email == e2?.email &&
        e1?.passwordHash == e2?.passwordHash &&
        e1?.profileImage == e2?.profileImage &&
        e1?.registeredDate == e2?.registeredDate &&
        e1?.username == e2?.username;
  }

  @override
  int hash(UserOfBlogRecord? e) => const ListEquality().hash([
        e?.bio,
        e?.email,
        e?.passwordHash,
        e?.profileImage,
        e?.registeredDate,
        e?.username
      ]);

  @override
  bool isValidKey(Object? o) => o is UserOfBlogRecord;
}
