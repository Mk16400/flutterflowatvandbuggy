import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamMembersRecord extends FirestoreRecord {
  TeamMembersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "contact" field.
  String? _contact;
  String get contact => _contact ?? '';
  bool hasContact() => _contact != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _contact = snapshotData['contact'] as String?;
    _image = snapshotData['image'] as String?;
    _name = snapshotData['name'] as String?;
    _position = snapshotData['position'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TeamMembers');

  static Stream<TeamMembersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamMembersRecord.fromSnapshot(s));

  static Future<TeamMembersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamMembersRecord.fromSnapshot(s));

  static TeamMembersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TeamMembersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamMembersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamMembersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamMembersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeamMembersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeamMembersRecordData({
  String? contact,
  String? image,
  String? name,
  String? position,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'contact': contact,
      'image': image,
      'name': name,
      'position': position,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeamMembersRecordDocumentEquality implements Equality<TeamMembersRecord> {
  const TeamMembersRecordDocumentEquality();

  @override
  bool equals(TeamMembersRecord? e1, TeamMembersRecord? e2) {
    return e1?.contact == e2?.contact &&
        e1?.image == e2?.image &&
        e1?.name == e2?.name &&
        e1?.position == e2?.position &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(TeamMembersRecord? e) => const ListEquality()
      .hash([e?.contact, e?.image, e?.name, e?.position, e?.timestamp]);

  @override
  bool isValidKey(Object? o) => o is TeamMembersRecord;
}
