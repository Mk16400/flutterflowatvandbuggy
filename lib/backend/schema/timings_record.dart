import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimingsRecord extends FirestoreRecord {
  TimingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Timings');

  static Stream<TimingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TimingsRecord.fromSnapshot(s));

  static Future<TimingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TimingsRecord.fromSnapshot(s));

  static TimingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TimingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TimingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TimingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TimingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TimingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTimingsRecordData({
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class TimingsRecordDocumentEquality implements Equality<TimingsRecord> {
  const TimingsRecordDocumentEquality();

  @override
  bool equals(TimingsRecord? e1, TimingsRecord? e2) {
    return e1?.title == e2?.title;
  }

  @override
  int hash(TimingsRecord? e) => const ListEquality().hash([e?.title]);

  @override
  bool isValidKey(Object? o) => o is TimingsRecord;
}
