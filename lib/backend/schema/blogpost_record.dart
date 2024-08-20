import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlogpostRecord extends FirestoreRecord {
  BlogpostRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "author_id" field.
  String? _authorId;
  String get authorId => _authorId ?? '';
  bool hasAuthorId() => _authorId != null;

  // "category_id" field.
  String? _categoryId;
  String get categoryId => _categoryId ?? '';
  bool hasCategoryId() => _categoryId != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "content_one" field.
  String? _contentOne;
  String get contentOne => _contentOne ?? '';
  bool hasContentOne() => _contentOne != null;

  // "content_three" field.
  String? _contentThree;
  String get contentThree => _contentThree ?? '';
  bool hasContentThree() => _contentThree != null;

  // "content_two" field.
  String? _contentTwo;
  String get contentTwo => _contentTwo ?? '';
  bool hasContentTwo() => _contentTwo != null;

  // "excerpt" field.
  String? _excerpt;
  String get excerpt => _excerpt ?? '';
  bool hasExcerpt() => _excerpt != null;

  // "featured_image" field.
  String? _featuredImage;
  String get featuredImage => _featuredImage ?? '';
  bool hasFeaturedImage() => _featuredImage != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "image_one" field.
  String? _imageOne;
  String get imageOne => _imageOne ?? '';
  bool hasImageOne() => _imageOne != null;

  // "image_two" field.
  String? _imageTwo;
  String get imageTwo => _imageTwo ?? '';
  bool hasImageTwo() => _imageTwo != null;

  // "published_date" field.
  DateTime? _publishedDate;
  DateTime? get publishedDate => _publishedDate;
  bool hasPublishedDate() => _publishedDate != null;

  // "seo_description" field.
  String? _seoDescription;
  String get seoDescription => _seoDescription ?? '';
  bool hasSeoDescription() => _seoDescription != null;

  // "seo_title" field.
  String? _seoTitle;
  String get seoTitle => _seoTitle ?? '';
  bool hasSeoTitle() => _seoTitle != null;

  // "slug" field.
  String? _slug;
  String get slug => _slug ?? '';
  bool hasSlug() => _slug != null;

  // "social_embed" field.
  String? _socialEmbed;
  String get socialEmbed => _socialEmbed ?? '';
  bool hasSocialEmbed() => _socialEmbed != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "tags" field.
  String? _tags;
  String get tags => _tags ?? '';
  bool hasTags() => _tags != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "updated_date" field.
  DateTime? _updatedDate;
  DateTime? get updatedDate => _updatedDate;
  bool hasUpdatedDate() => _updatedDate != null;

  // "views_count" field.
  int? _viewsCount;
  int get viewsCount => _viewsCount ?? 0;
  bool hasViewsCount() => _viewsCount != null;

  void _initializeFields() {
    _authorId = snapshotData['author_id'] as String?;
    _categoryId = snapshotData['category_id'] as String?;
    _content = snapshotData['content'] as String?;
    _contentOne = snapshotData['content_one'] as String?;
    _contentThree = snapshotData['content_three'] as String?;
    _contentTwo = snapshotData['content_two'] as String?;
    _excerpt = snapshotData['excerpt'] as String?;
    _featuredImage = snapshotData['featured_image'] as String?;
    _id = snapshotData['id'] as String?;
    _imageOne = snapshotData['image_one'] as String?;
    _imageTwo = snapshotData['image_two'] as String?;
    _publishedDate = snapshotData['published_date'] as DateTime?;
    _seoDescription = snapshotData['seo_description'] as String?;
    _seoTitle = snapshotData['seo_title'] as String?;
    _slug = snapshotData['slug'] as String?;
    _socialEmbed = snapshotData['social_embed'] as String?;
    _status = snapshotData['status'] as String?;
    _tags = snapshotData['tags'] as String?;
    _title = snapshotData['title'] as String?;
    _updatedDate = snapshotData['updated_date'] as DateTime?;
    _viewsCount = castToType<int>(snapshotData['views_count']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blogpost');

  static Stream<BlogpostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BlogpostRecord.fromSnapshot(s));

  static Future<BlogpostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BlogpostRecord.fromSnapshot(s));

  static BlogpostRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BlogpostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BlogpostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BlogpostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BlogpostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BlogpostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBlogpostRecordData({
  String? authorId,
  String? categoryId,
  String? content,
  String? contentOne,
  String? contentThree,
  String? contentTwo,
  String? excerpt,
  String? featuredImage,
  String? id,
  String? imageOne,
  String? imageTwo,
  DateTime? publishedDate,
  String? seoDescription,
  String? seoTitle,
  String? slug,
  String? socialEmbed,
  String? status,
  String? tags,
  String? title,
  DateTime? updatedDate,
  int? viewsCount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'author_id': authorId,
      'category_id': categoryId,
      'content': content,
      'content_one': contentOne,
      'content_three': contentThree,
      'content_two': contentTwo,
      'excerpt': excerpt,
      'featured_image': featuredImage,
      'id': id,
      'image_one': imageOne,
      'image_two': imageTwo,
      'published_date': publishedDate,
      'seo_description': seoDescription,
      'seo_title': seoTitle,
      'slug': slug,
      'social_embed': socialEmbed,
      'status': status,
      'tags': tags,
      'title': title,
      'updated_date': updatedDate,
      'views_count': viewsCount,
    }.withoutNulls,
  );

  return firestoreData;
}

class BlogpostRecordDocumentEquality implements Equality<BlogpostRecord> {
  const BlogpostRecordDocumentEquality();

  @override
  bool equals(BlogpostRecord? e1, BlogpostRecord? e2) {
    return e1?.authorId == e2?.authorId &&
        e1?.categoryId == e2?.categoryId &&
        e1?.content == e2?.content &&
        e1?.contentOne == e2?.contentOne &&
        e1?.contentThree == e2?.contentThree &&
        e1?.contentTwo == e2?.contentTwo &&
        e1?.excerpt == e2?.excerpt &&
        e1?.featuredImage == e2?.featuredImage &&
        e1?.id == e2?.id &&
        e1?.imageOne == e2?.imageOne &&
        e1?.imageTwo == e2?.imageTwo &&
        e1?.publishedDate == e2?.publishedDate &&
        e1?.seoDescription == e2?.seoDescription &&
        e1?.seoTitle == e2?.seoTitle &&
        e1?.slug == e2?.slug &&
        e1?.socialEmbed == e2?.socialEmbed &&
        e1?.status == e2?.status &&
        e1?.tags == e2?.tags &&
        e1?.title == e2?.title &&
        e1?.updatedDate == e2?.updatedDate &&
        e1?.viewsCount == e2?.viewsCount;
  }

  @override
  int hash(BlogpostRecord? e) => const ListEquality().hash([
        e?.authorId,
        e?.categoryId,
        e?.content,
        e?.contentOne,
        e?.contentThree,
        e?.contentTwo,
        e?.excerpt,
        e?.featuredImage,
        e?.id,
        e?.imageOne,
        e?.imageTwo,
        e?.publishedDate,
        e?.seoDescription,
        e?.seoTitle,
        e?.slug,
        e?.socialEmbed,
        e?.status,
        e?.tags,
        e?.title,
        e?.updatedDate,
        e?.viewsCount
      ]);

  @override
  bool isValidKey(Object? o) => o is BlogpostRecord;
}
