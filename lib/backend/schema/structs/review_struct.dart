// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewStruct extends FFFirebaseStruct {
  ReviewStruct({
    String? comment,
    String? feedback,
    List<String>? images,
    String? option,
    String? type,
    String? uid,
    String? vehicleUid,
    String? companyUid,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _comment = comment,
        _feedback = feedback,
        _images = images,
        _option = option,
        _type = type,
        _uid = uid,
        _vehicleUid = vehicleUid,
        _companyUid = companyUid,
        super(firestoreUtilData);

  // "Comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  set comment(String? val) => _comment = val;

  bool hasComment() => _comment != null;

  // "Feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  set feedback(String? val) => _feedback = val;

  bool hasFeedback() => _feedback != null;

  // "Images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  set images(List<String>? val) => _images = val;

  void updateImages(Function(List<String>) updateFn) {
    updateFn(_images ??= []);
  }

  bool hasImages() => _images != null;

  // "Option" field.
  String? _option;
  String get option => _option ?? '';
  set option(String? val) => _option = val;

  bool hasOption() => _option != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "Uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "VehicleUid" field.
  String? _vehicleUid;
  String get vehicleUid => _vehicleUid ?? '';
  set vehicleUid(String? val) => _vehicleUid = val;

  bool hasVehicleUid() => _vehicleUid != null;

  // "companyUid" field.
  String? _companyUid;
  String get companyUid => _companyUid ?? '';
  set companyUid(String? val) => _companyUid = val;

  bool hasCompanyUid() => _companyUid != null;

  static ReviewStruct fromMap(Map<String, dynamic> data) => ReviewStruct(
        comment: data['Comment'] as String?,
        feedback: data['Feedback'] as String?,
        images: getDataList(data['Images']),
        option: data['Option'] as String?,
        type: data['Type'] as String?,
        uid: data['Uid'] as String?,
        vehicleUid: data['VehicleUid'] as String?,
        companyUid: data['companyUid'] as String?,
      );

  static ReviewStruct? maybeFromMap(dynamic data) =>
      data is Map ? ReviewStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Comment': _comment,
        'Feedback': _feedback,
        'Images': _images,
        'Option': _option,
        'Type': _type,
        'Uid': _uid,
        'VehicleUid': _vehicleUid,
        'companyUid': _companyUid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Comment': serializeParam(
          _comment,
          ParamType.String,
        ),
        'Feedback': serializeParam(
          _feedback,
          ParamType.String,
        ),
        'Images': serializeParam(
          _images,
          ParamType.String,
          isList: true,
        ),
        'Option': serializeParam(
          _option,
          ParamType.String,
        ),
        'Type': serializeParam(
          _type,
          ParamType.String,
        ),
        'Uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'VehicleUid': serializeParam(
          _vehicleUid,
          ParamType.String,
        ),
        'companyUid': serializeParam(
          _companyUid,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReviewStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReviewStruct(
        comment: deserializeParam(
          data['Comment'],
          ParamType.String,
          false,
        ),
        feedback: deserializeParam(
          data['Feedback'],
          ParamType.String,
          false,
        ),
        images: deserializeParam<String>(
          data['Images'],
          ParamType.String,
          true,
        ),
        option: deserializeParam(
          data['Option'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['Type'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['Uid'],
          ParamType.String,
          false,
        ),
        vehicleUid: deserializeParam(
          data['VehicleUid'],
          ParamType.String,
          false,
        ),
        companyUid: deserializeParam(
          data['companyUid'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReviewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ReviewStruct &&
        comment == other.comment &&
        feedback == other.feedback &&
        listEquality.equals(images, other.images) &&
        option == other.option &&
        type == other.type &&
        uid == other.uid &&
        vehicleUid == other.vehicleUid &&
        companyUid == other.companyUid;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [comment, feedback, images, option, type, uid, vehicleUid, companyUid]);
}

ReviewStruct createReviewStruct({
  String? comment,
  String? feedback,
  String? option,
  String? type,
  String? uid,
  String? vehicleUid,
  String? companyUid,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReviewStruct(
      comment: comment,
      feedback: feedback,
      option: option,
      type: type,
      uid: uid,
      vehicleUid: vehicleUid,
      companyUid: companyUid,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReviewStruct? updateReviewStruct(
  ReviewStruct? review, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    review
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReviewStructData(
  Map<String, dynamic> firestoreData,
  ReviewStruct? review,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (review == null) {
    return;
  }
  if (review.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && review.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reviewData = getReviewFirestoreData(review, forFieldValue);
  final nestedData = reviewData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = review.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReviewFirestoreData(
  ReviewStruct? review, [
  bool forFieldValue = false,
]) {
  if (review == null) {
    return {};
  }
  final firestoreData = mapToFirestore(review.toMap());

  // Add any Firestore field values
  review.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReviewListFirestoreData(
  List<ReviewStruct>? reviews,
) =>
    reviews?.map((e) => getReviewFirestoreData(e, true)).toList() ?? [];
