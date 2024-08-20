import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UpdatesRecord extends FirestoreRecord {
  UpdatesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "android_version" field.
  String? _androidVersion;
  String get androidVersion => _androidVersion ?? '';
  bool hasAndroidVersion() => _androidVersion != null;

  // "ios_version" field.
  String? _iosVersion;
  String get iosVersion => _iosVersion ?? '';
  bool hasIosVersion() => _iosVersion != null;

  // "is_force_update" field.
  String? _isForceUpdate;
  String get isForceUpdate => _isForceUpdate ?? '';
  bool hasIsForceUpdate() => _isForceUpdate != null;

  void _initializeFields() {
    _androidVersion = snapshotData['android_version'] as String?;
    _iosVersion = snapshotData['ios_version'] as String?;
    _isForceUpdate = snapshotData['is_force_update'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('updates');

  static Stream<UpdatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UpdatesRecord.fromSnapshot(s));

  static Future<UpdatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UpdatesRecord.fromSnapshot(s));

  static UpdatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UpdatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UpdatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UpdatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UpdatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UpdatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUpdatesRecordData({
  String? androidVersion,
  String? iosVersion,
  String? isForceUpdate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'android_version': androidVersion,
      'ios_version': iosVersion,
      'is_force_update': isForceUpdate,
    }.withoutNulls,
  );

  return firestoreData;
}

class UpdatesRecordDocumentEquality implements Equality<UpdatesRecord> {
  const UpdatesRecordDocumentEquality();

  @override
  bool equals(UpdatesRecord? e1, UpdatesRecord? e2) {
    return e1?.androidVersion == e2?.androidVersion &&
        e1?.iosVersion == e2?.iosVersion &&
        e1?.isForceUpdate == e2?.isForceUpdate;
  }

  @override
  int hash(UpdatesRecord? e) => const ListEquality()
      .hash([e?.androidVersion, e?.iosVersion, e?.isForceUpdate]);

  @override
  bool isValidKey(Object? o) => o is UpdatesRecord;
}
