import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InstagramPostsRecord extends FirestoreRecord {
  InstagramPostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  bool hasUrl() => _url != null;

  void _initializeFields() {
    _url = snapshotData['url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('instagramPosts');

  static Stream<InstagramPostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InstagramPostsRecord.fromSnapshot(s));

  static Future<InstagramPostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InstagramPostsRecord.fromSnapshot(s));

  static InstagramPostsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InstagramPostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InstagramPostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InstagramPostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InstagramPostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InstagramPostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInstagramPostsRecordData({
  String? url,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'url': url,
    }.withoutNulls,
  );

  return firestoreData;
}

class InstagramPostsRecordDocumentEquality
    implements Equality<InstagramPostsRecord> {
  const InstagramPostsRecordDocumentEquality();

  @override
  bool equals(InstagramPostsRecord? e1, InstagramPostsRecord? e2) {
    return e1?.url == e2?.url;
  }

  @override
  int hash(InstagramPostsRecord? e) => const ListEquality().hash([e?.url]);

  @override
  bool isValidKey(Object? o) => o is InstagramPostsRecord;
}
