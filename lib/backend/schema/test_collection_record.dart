import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TestCollectionRecord extends FirestoreRecord {
  TestCollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "value1" field.
  String? _value1;
  String get value1 => _value1 ?? '';
  bool hasValue1() => _value1 != null;

  // "value2" field.
  String? _value2;
  String get value2 => _value2 ?? '';
  bool hasValue2() => _value2 != null;

  // "value3" field.
  String? _value3;
  String get value3 => _value3 ?? '';
  bool hasValue3() => _value3 != null;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _value1 = snapshotData['value1'] as String?;
    _value2 = snapshotData['value2'] as String?;
    _value3 = snapshotData['value3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('testCollection');

  static Stream<TestCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TestCollectionRecord.fromSnapshot(s));

  static Future<TestCollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TestCollectionRecord.fromSnapshot(s));

  static TestCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TestCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TestCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TestCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TestCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TestCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTestCollectionRecordData({
  DateTime? createdAt,
  String? value1,
  String? value2,
  String? value3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'value1': value1,
      'value2': value2,
      'value3': value3,
    }.withoutNulls,
  );

  return firestoreData;
}

class TestCollectionRecordDocumentEquality
    implements Equality<TestCollectionRecord> {
  const TestCollectionRecordDocumentEquality();

  @override
  bool equals(TestCollectionRecord? e1, TestCollectionRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.value1 == e2?.value1 &&
        e1?.value2 == e2?.value2 &&
        e1?.value3 == e2?.value3;
  }

  @override
  int hash(TestCollectionRecord? e) => const ListEquality()
      .hash([e?.createdAt, e?.value1, e?.value2, e?.value3]);

  @override
  bool isValidKey(Object? o) => o is TestCollectionRecord;
}
