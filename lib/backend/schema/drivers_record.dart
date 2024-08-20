import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DriversRecord extends FirestoreRecord {
  DriversRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "FirstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "HumanReadableAddress" field.
  String? _humanReadableAddress;
  String get humanReadableAddress => _humanReadableAddress ?? '';
  bool hasHumanReadableAddress() => _humanReadableAddress != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "LastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "Latitude" field.
  int? _latitude;
  int get latitude => _latitude ?? 0;
  bool hasLatitude() => _latitude != null;

  // "Longitude" field.
  int? _longitude;
  int get longitude => _longitude ?? 0;
  bool hasLongitude() => _longitude != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "PhoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "UserName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "currentPage" field.
  String? _currentPage;
  String get currentPage => _currentPage ?? '';
  bool hasCurrentPage() => _currentPage != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  bool hasToken() => _token != null;

  void _initializeFields() {
    _email = snapshotData['Email'] as String?;
    _firstName = snapshotData['FirstName'] as String?;
    _humanReadableAddress = snapshotData['HumanReadableAddress'] as String?;
    _image = snapshotData['Image'] as String?;
    _lastName = snapshotData['LastName'] as String?;
    _latitude = castToType<int>(snapshotData['Latitude']);
    _longitude = castToType<int>(snapshotData['Longitude']);
    _password = snapshotData['Password'] as String?;
    _phoneNumber = snapshotData['PhoneNumber'] as String?;
    _userName = snapshotData['UserName'] as String?;
    _currentPage = snapshotData['currentPage'] as String?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
    _token = snapshotData['token'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Drivers');

  static Stream<DriversRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DriversRecord.fromSnapshot(s));

  static Future<DriversRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DriversRecord.fromSnapshot(s));

  static DriversRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DriversRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DriversRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DriversRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DriversRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DriversRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDriversRecordData({
  String? email,
  String? firstName,
  String? humanReadableAddress,
  String? image,
  String? lastName,
  int? latitude,
  int? longitude,
  String? password,
  String? phoneNumber,
  String? userName,
  String? currentPage,
  bool? isDeleted,
  String? token,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Email': email,
      'FirstName': firstName,
      'HumanReadableAddress': humanReadableAddress,
      'Image': image,
      'LastName': lastName,
      'Latitude': latitude,
      'Longitude': longitude,
      'Password': password,
      'PhoneNumber': phoneNumber,
      'UserName': userName,
      'currentPage': currentPage,
      'isDeleted': isDeleted,
      'token': token,
    }.withoutNulls,
  );

  return firestoreData;
}

class DriversRecordDocumentEquality implements Equality<DriversRecord> {
  const DriversRecordDocumentEquality();

  @override
  bool equals(DriversRecord? e1, DriversRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.firstName == e2?.firstName &&
        e1?.humanReadableAddress == e2?.humanReadableAddress &&
        e1?.image == e2?.image &&
        e1?.lastName == e2?.lastName &&
        e1?.latitude == e2?.latitude &&
        e1?.longitude == e2?.longitude &&
        e1?.password == e2?.password &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userName == e2?.userName &&
        e1?.currentPage == e2?.currentPage &&
        e1?.isDeleted == e2?.isDeleted &&
        e1?.token == e2?.token;
  }

  @override
  int hash(DriversRecord? e) => const ListEquality().hash([
        e?.email,
        e?.firstName,
        e?.humanReadableAddress,
        e?.image,
        e?.lastName,
        e?.latitude,
        e?.longitude,
        e?.password,
        e?.phoneNumber,
        e?.userName,
        e?.currentPage,
        e?.isDeleted,
        e?.token
      ]);

  @override
  bool isValidKey(Object? o) => o is DriversRecord;
}
