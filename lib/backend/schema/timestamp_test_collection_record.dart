import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimestampTestCollectionRecord extends FirestoreRecord {
  TimestampTestCollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "timestamp" field.
  String? _timestamp;
  String get timestamp => _timestamp ?? '';
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _timestamp = snapshotData['timestamp'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('timestampTestCollection');

  static Stream<TimestampTestCollectionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => TimestampTestCollectionRecord.fromSnapshot(s));

  static Future<TimestampTestCollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TimestampTestCollectionRecord.fromSnapshot(s));

  static TimestampTestCollectionRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      TimestampTestCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TimestampTestCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TimestampTestCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TimestampTestCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TimestampTestCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTimestampTestCollectionRecordData({
  String? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class TimestampTestCollectionRecordDocumentEquality
    implements Equality<TimestampTestCollectionRecord> {
  const TimestampTestCollectionRecordDocumentEquality();

  @override
  bool equals(
      TimestampTestCollectionRecord? e1, TimestampTestCollectionRecord? e2) {
    return e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(TimestampTestCollectionRecord? e) =>
      const ListEquality().hash([e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is TimestampTestCollectionRecord;
}
