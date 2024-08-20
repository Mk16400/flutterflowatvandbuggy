import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingTranscriptRecord extends FirestoreRecord {
  BookingTranscriptRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  bool hasCreatedAt() => _createdAt != null;

  // "pdfUrl" field.
  String? _pdfUrl;
  String get pdfUrl => _pdfUrl ?? '';
  bool hasPdfUrl() => _pdfUrl != null;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as String?;
    _pdfUrl = snapshotData['pdfUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('booking-transcript');

  static Stream<BookingTranscriptRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingTranscriptRecord.fromSnapshot(s));

  static Future<BookingTranscriptRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => BookingTranscriptRecord.fromSnapshot(s));

  static BookingTranscriptRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingTranscriptRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingTranscriptRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingTranscriptRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingTranscriptRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingTranscriptRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingTranscriptRecordData({
  String? createdAt,
  String? pdfUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'pdfUrl': pdfUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingTranscriptRecordDocumentEquality
    implements Equality<BookingTranscriptRecord> {
  const BookingTranscriptRecordDocumentEquality();

  @override
  bool equals(BookingTranscriptRecord? e1, BookingTranscriptRecord? e2) {
    return e1?.createdAt == e2?.createdAt && e1?.pdfUrl == e2?.pdfUrl;
  }

  @override
  int hash(BookingTranscriptRecord? e) =>
      const ListEquality().hash([e?.createdAt, e?.pdfUrl]);

  @override
  bool isValidKey(Object? o) => o is BookingTranscriptRecord;
}
