import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TypesRecord extends FirestoreRecord {
  TypesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _timestamp = snapshotData['Timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Types');

  static Stream<TypesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TypesRecord.fromSnapshot(s));

  static Future<TypesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TypesRecord.fromSnapshot(s));

  static TypesRecord fromSnapshot(DocumentSnapshot snapshot) => TypesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TypesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TypesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TypesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TypesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTypesRecordData({
  String? name,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class TypesRecordDocumentEquality implements Equality<TypesRecord> {
  const TypesRecordDocumentEquality();

  @override
  bool equals(TypesRecord? e1, TypesRecord? e2) {
    return e1?.name == e2?.name && e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(TypesRecord? e) =>
      const ListEquality().hash([e?.name, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is TypesRecord;
}
