import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConfigRecord extends FirestoreRecord {
  ConfigRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cloudflare_account_hash_dev" field.
  String? _cloudflareAccountHashDev;
  String get cloudflareAccountHashDev => _cloudflareAccountHashDev ?? '';
  bool hasCloudflareAccountHashDev() => _cloudflareAccountHashDev != null;

  // "cloudflare_account_hash_prod" field.
  String? _cloudflareAccountHashProd;
  String get cloudflareAccountHashProd => _cloudflareAccountHashProd ?? '';
  bool hasCloudflareAccountHashProd() => _cloudflareAccountHashProd != null;

  // "cloudflare_account_hash_staging" field.
  String? _cloudflareAccountHashStaging;
  String get cloudflareAccountHashStaging =>
      _cloudflareAccountHashStaging ?? '';
  bool hasCloudflareAccountHashStaging() =>
      _cloudflareAccountHashStaging != null;

  // "cloudflare_url_sample" field.
  String? _cloudflareUrlSample;
  String get cloudflareUrlSample => _cloudflareUrlSample ?? '';
  bool hasCloudflareUrlSample() => _cloudflareUrlSample != null;

  // "variant" field.
  String? _variant;
  String get variant => _variant ?? '';
  bool hasVariant() => _variant != null;

  void _initializeFields() {
    _cloudflareAccountHashDev =
        snapshotData['cloudflare_account_hash_dev'] as String?;
    _cloudflareAccountHashProd =
        snapshotData['cloudflare_account_hash_prod'] as String?;
    _cloudflareAccountHashStaging =
        snapshotData['cloudflare_account_hash_staging'] as String?;
    _cloudflareUrlSample = snapshotData['cloudflare_url_sample'] as String?;
    _variant = snapshotData['variant'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('config');

  static Stream<ConfigRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConfigRecord.fromSnapshot(s));

  static Future<ConfigRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConfigRecord.fromSnapshot(s));

  static ConfigRecord fromSnapshot(DocumentSnapshot snapshot) => ConfigRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConfigRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConfigRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConfigRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConfigRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConfigRecordData({
  String? cloudflareAccountHashDev,
  String? cloudflareAccountHashProd,
  String? cloudflareAccountHashStaging,
  String? cloudflareUrlSample,
  String? variant,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cloudflare_account_hash_dev': cloudflareAccountHashDev,
      'cloudflare_account_hash_prod': cloudflareAccountHashProd,
      'cloudflare_account_hash_staging': cloudflareAccountHashStaging,
      'cloudflare_url_sample': cloudflareUrlSample,
      'variant': variant,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConfigRecordDocumentEquality implements Equality<ConfigRecord> {
  const ConfigRecordDocumentEquality();

  @override
  bool equals(ConfigRecord? e1, ConfigRecord? e2) {
    return e1?.cloudflareAccountHashDev == e2?.cloudflareAccountHashDev &&
        e1?.cloudflareAccountHashProd == e2?.cloudflareAccountHashProd &&
        e1?.cloudflareAccountHashStaging == e2?.cloudflareAccountHashStaging &&
        e1?.cloudflareUrlSample == e2?.cloudflareUrlSample &&
        e1?.variant == e2?.variant;
  }

  @override
  int hash(ConfigRecord? e) => const ListEquality().hash([
        e?.cloudflareAccountHashDev,
        e?.cloudflareAccountHashProd,
        e?.cloudflareAccountHashStaging,
        e?.cloudflareUrlSample,
        e?.variant
      ]);

  @override
  bool isValidKey(Object? o) => o is ConfigRecord;
}
