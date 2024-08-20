import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentRecord extends FirestoreRecord {
  CommentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "author_email" field.
  String? _authorEmail;
  String get authorEmail => _authorEmail ?? '';
  bool hasAuthorEmail() => _authorEmail != null;

  // "author_name" field.
  String? _authorName;
  String get authorName => _authorName ?? '';
  bool hasAuthorName() => _authorName != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "post_id" field.
  String? _postId;
  String get postId => _postId ?? '';
  bool hasPostId() => _postId != null;

  void _initializeFields() {
    _authorEmail = snapshotData['author_email'] as String?;
    _authorName = snapshotData['author_name'] as String?;
    _content = snapshotData['content'] as String?;
    _postId = snapshotData['post_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comment');

  static Stream<CommentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentRecord.fromSnapshot(s));

  static Future<CommentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentRecord.fromSnapshot(s));

  static CommentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentRecordData({
  String? authorEmail,
  String? authorName,
  String? content,
  String? postId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'author_email': authorEmail,
      'author_name': authorName,
      'content': content,
      'post_id': postId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentRecordDocumentEquality implements Equality<CommentRecord> {
  const CommentRecordDocumentEquality();

  @override
  bool equals(CommentRecord? e1, CommentRecord? e2) {
    return e1?.authorEmail == e2?.authorEmail &&
        e1?.authorName == e2?.authorName &&
        e1?.content == e2?.content &&
        e1?.postId == e2?.postId;
  }

  @override
  int hash(CommentRecord? e) => const ListEquality()
      .hash([e?.authorEmail, e?.authorName, e?.content, e?.postId]);

  @override
  bool isValidKey(Object? o) => o is CommentRecord;
}
