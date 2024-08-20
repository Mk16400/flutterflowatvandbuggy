import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QrIdsRecord extends FirestoreRecord {
  QrIdsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "age" field.
  List<String>? _age;
  List<String> get age => _age ?? const [];
  bool hasAge() => _age != null;

  void _initializeFields() {
    _id = snapshotData['Id'] as String?;
    _age = getDataList(snapshotData['age']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('QrIds');

  static Stream<QrIdsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QrIdsRecord.fromSnapshot(s));

  static Future<QrIdsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QrIdsRecord.fromSnapshot(s));

  static QrIdsRecord fromSnapshot(DocumentSnapshot snapshot) => QrIdsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QrIdsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QrIdsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QrIdsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QrIdsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQrIdsRecordData({
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class QrIdsRecordDocumentEquality implements Equality<QrIdsRecord> {
  const QrIdsRecordDocumentEquality();

  @override
  bool equals(QrIdsRecord? e1, QrIdsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id && listEquality.equals(e1?.age, e2?.age);
  }

  @override
  int hash(QrIdsRecord? e) => const ListEquality().hash([e?.id, e?.age]);

  @override
  bool isValidKey(Object? o) => o is QrIdsRecord;
}
