import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AboutUsDetailRecord extends FirestoreRecord {
  AboutUsDetailRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "heading" field.
  String? _heading;
  String get heading => _heading ?? '';
  bool hasHeading() => _heading != null;

  // "paragraph" field.
  String? _paragraph;
  String get paragraph => _paragraph ?? '';
  bool hasParagraph() => _paragraph != null;

  // "trips" field.
  String? _trips;
  String get trips => _trips ?? '';
  bool hasTrips() => _trips != null;

  // "users" field.
  String? _users;
  String get users => _users ?? '';
  bool hasUsers() => _users != null;

  void _initializeFields() {
    _heading = snapshotData['heading'] as String?;
    _paragraph = snapshotData['paragraph'] as String?;
    _trips = snapshotData['trips'] as String?;
    _users = snapshotData['users'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AboutUsDetail');

  static Stream<AboutUsDetailRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AboutUsDetailRecord.fromSnapshot(s));

  static Future<AboutUsDetailRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AboutUsDetailRecord.fromSnapshot(s));

  static AboutUsDetailRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AboutUsDetailRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AboutUsDetailRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AboutUsDetailRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AboutUsDetailRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AboutUsDetailRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAboutUsDetailRecordData({
  String? heading,
  String? paragraph,
  String? trips,
  String? users,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'heading': heading,
      'paragraph': paragraph,
      'trips': trips,
      'users': users,
    }.withoutNulls,
  );

  return firestoreData;
}

class AboutUsDetailRecordDocumentEquality
    implements Equality<AboutUsDetailRecord> {
  const AboutUsDetailRecordDocumentEquality();

  @override
  bool equals(AboutUsDetailRecord? e1, AboutUsDetailRecord? e2) {
    return e1?.heading == e2?.heading &&
        e1?.paragraph == e2?.paragraph &&
        e1?.trips == e2?.trips &&
        e1?.users == e2?.users;
  }

  @override
  int hash(AboutUsDetailRecord? e) =>
      const ListEquality().hash([e?.heading, e?.paragraph, e?.trips, e?.users]);

  @override
  bool isValidKey(Object? o) => o is AboutUsDetailRecord;
}
