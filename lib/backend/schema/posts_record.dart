import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "published_date" field.
  DateTime? _publishedDate;
  DateTime? get publishedDate => _publishedDate;
  bool hasPublishedDate() => _publishedDate != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "updated_date" field.
  DateTime? _updatedDate;
  DateTime? get updatedDate => _updatedDate;
  bool hasUpdatedDate() => _updatedDate != null;

  void _initializeFields() {
    _content = snapshotData['content'] as String?;
    _publishedDate = snapshotData['published_date'] as DateTime?;
    _title = snapshotData['title'] as String?;
    _updatedDate = snapshotData['updated_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? content,
  DateTime? publishedDate,
  String? title,
  DateTime? updatedDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'content': content,
      'published_date': publishedDate,
      'title': title,
      'updated_date': updatedDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    return e1?.content == e2?.content &&
        e1?.publishedDate == e2?.publishedDate &&
        e1?.title == e2?.title &&
        e1?.updatedDate == e2?.updatedDate;
  }

  @override
  int hash(PostsRecord? e) => const ListEquality()
      .hash([e?.content, e?.publishedDate, e?.title, e?.updatedDate]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
