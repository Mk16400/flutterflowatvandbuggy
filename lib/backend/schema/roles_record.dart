import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RolesRecord extends FirestoreRecord {
  RolesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Permissions" field.
  String? _permissions;
  String get permissions => _permissions ?? '';
  bool hasPermissions() => _permissions != null;

  void _initializeFields() {
    _permissions = snapshotData['Permissions'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Roles');

  static Stream<RolesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RolesRecord.fromSnapshot(s));

  static Future<RolesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RolesRecord.fromSnapshot(s));

  static RolesRecord fromSnapshot(DocumentSnapshot snapshot) => RolesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RolesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RolesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RolesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RolesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRolesRecordData({
  String? permissions,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Permissions': permissions,
    }.withoutNulls,
  );

  return firestoreData;
}

class RolesRecordDocumentEquality implements Equality<RolesRecord> {
  const RolesRecordDocumentEquality();

  @override
  bool equals(RolesRecord? e1, RolesRecord? e2) {
    return e1?.permissions == e2?.permissions;
  }

  @override
  int hash(RolesRecord? e) => const ListEquality().hash([e?.permissions]);

  @override
  bool isValidKey(Object? o) => o is RolesRecord;
}
