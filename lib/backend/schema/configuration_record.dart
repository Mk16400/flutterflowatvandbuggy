import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConfigurationRecord extends FirestoreRecord {
  ConfigurationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "is_valid_qr" field.
  String? _isValidQr;
  String get isValidQr => _isValidQr ?? '';
  bool hasIsValidQr() => _isValidQr != null;

  void _initializeFields() {
    _isValidQr = snapshotData['is_valid_qr'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('configuration');

  static Stream<ConfigurationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConfigurationRecord.fromSnapshot(s));

  static Future<ConfigurationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConfigurationRecord.fromSnapshot(s));

  static ConfigurationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConfigurationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConfigurationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConfigurationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConfigurationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConfigurationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConfigurationRecordData({
  String? isValidQr,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'is_valid_qr': isValidQr,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConfigurationRecordDocumentEquality
    implements Equality<ConfigurationRecord> {
  const ConfigurationRecordDocumentEquality();

  @override
  bool equals(ConfigurationRecord? e1, ConfigurationRecord? e2) {
    return e1?.isValidQr == e2?.isValidQr;
  }

  @override
  int hash(ConfigurationRecord? e) => const ListEquality().hash([e?.isValidQr]);

  @override
  bool isValidKey(Object? o) => o is ConfigurationRecord;
}
