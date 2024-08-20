import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TagRecord extends FirestoreRecord {
  TagRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  bool hasSlug() => _slug != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _slug = snapshotData['slug'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tag');

  static Stream<TagRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TagRecord.fromSnapshot(s));

  static Future<TagRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TagRecord.fromSnapshot(s));

  static TagRecord fromSnapshot(DocumentSnapshot snapshot) => TagRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TagRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TagRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TagRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TagRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTagRecordData({
  String? name,
  String? slug,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'slug': slug,
    }.withoutNulls,
  );

  return firestoreData;
}

class TagRecordDocumentEquality implements Equality<TagRecord> {
  const TagRecordDocumentEquality();

  @override
  bool equals(TagRecord? e1, TagRecord? e2) {
    return e1?.name == e2?.name && e1?.slug == e2?.slug;
  }

  @override
  int hash(TagRecord? e) => const ListEquality().hash([e?.name, e?.slug]);

  @override
  bool isValidKey(Object? o) => o is TagRecord;
}
