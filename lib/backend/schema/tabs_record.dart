import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TabsRecord extends FirestoreRecord {
  TabsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tabs');

  static Stream<TabsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TabsRecord.fromSnapshot(s));

  static Future<TabsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TabsRecord.fromSnapshot(s));

  static TabsRecord fromSnapshot(DocumentSnapshot snapshot) => TabsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TabsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TabsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TabsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TabsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTabsRecordData({
  String? name,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class TabsRecordDocumentEquality implements Equality<TabsRecord> {
  const TabsRecordDocumentEquality();

  @override
  bool equals(TabsRecord? e1, TabsRecord? e2) {
    return e1?.name == e2?.name && e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(TabsRecord? e) => const ListEquality().hash([e?.name, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is TabsRecord;
}
