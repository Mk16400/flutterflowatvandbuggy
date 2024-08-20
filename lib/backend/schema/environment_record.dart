import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnvironmentRecord extends FirestoreRecord {
  EnvironmentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('environment');

  static Stream<EnvironmentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnvironmentRecord.fromSnapshot(s));

  static Future<EnvironmentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnvironmentRecord.fromSnapshot(s));

  static EnvironmentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnvironmentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnvironmentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnvironmentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnvironmentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnvironmentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnvironmentRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnvironmentRecordDocumentEquality implements Equality<EnvironmentRecord> {
  const EnvironmentRecordDocumentEquality();

  @override
  bool equals(EnvironmentRecord? e1, EnvironmentRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(EnvironmentRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is EnvironmentRecord;
}
