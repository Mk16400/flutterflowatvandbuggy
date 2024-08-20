import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlogsSubscribersRecord extends FirestoreRecord {
  BlogsSubscribersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blogsSubscribers');

  static Stream<BlogsSubscribersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BlogsSubscribersRecord.fromSnapshot(s));

  static Future<BlogsSubscribersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BlogsSubscribersRecord.fromSnapshot(s));

  static BlogsSubscribersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BlogsSubscribersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BlogsSubscribersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BlogsSubscribersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BlogsSubscribersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BlogsSubscribersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBlogsSubscribersRecordData({
  String? email,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class BlogsSubscribersRecordDocumentEquality
    implements Equality<BlogsSubscribersRecord> {
  const BlogsSubscribersRecordDocumentEquality();

  @override
  bool equals(BlogsSubscribersRecord? e1, BlogsSubscribersRecord? e2) {
    return e1?.email == e2?.email && e1?.name == e2?.name;
  }

  @override
  int hash(BlogsSubscribersRecord? e) =>
      const ListEquality().hash([e?.email, e?.name]);

  @override
  bool isValidKey(Object? o) => o is BlogsSubscribersRecord;
}
