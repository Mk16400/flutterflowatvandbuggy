import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthorRecord extends FirestoreRecord {
  AuthorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "author_image" field.
  String? _authorImage;
  String get authorImage => _authorImage ?? '';
  bool hasAuthorImage() => _authorImage != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _authorImage = snapshotData['author_image'] as String?;
    _bio = snapshotData['bio'] as String?;
    _email = snapshotData['email'] as String?;
    _id = snapshotData['id'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('author');

  static Stream<AuthorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AuthorRecord.fromSnapshot(s));

  static Future<AuthorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AuthorRecord.fromSnapshot(s));

  static AuthorRecord fromSnapshot(DocumentSnapshot snapshot) => AuthorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AuthorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AuthorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AuthorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AuthorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAuthorRecordData({
  String? authorImage,
  String? bio,
  String? email,
  String? id,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'author_image': authorImage,
      'bio': bio,
      'email': email,
      'id': id,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class AuthorRecordDocumentEquality implements Equality<AuthorRecord> {
  const AuthorRecordDocumentEquality();

  @override
  bool equals(AuthorRecord? e1, AuthorRecord? e2) {
    return e1?.authorImage == e2?.authorImage &&
        e1?.bio == e2?.bio &&
        e1?.email == e2?.email &&
        e1?.id == e2?.id &&
        e1?.name == e2?.name;
  }

  @override
  int hash(AuthorRecord? e) => const ListEquality()
      .hash([e?.authorImage, e?.bio, e?.email, e?.id, e?.name]);

  @override
  bool isValidKey(Object? o) => o is AuthorRecord;
}
