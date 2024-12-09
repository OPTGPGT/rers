import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AboutusphotocollectionRecord extends FirestoreRecord {
  AboutusphotocollectionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "shortnote" field.
  String? _shortnote;
  String get shortnote => _shortnote ?? '';
  bool hasShortnote() => _shortnote != null;

  // "UploadTS" field.
  DateTime? _uploadTS;
  DateTime? get uploadTS => _uploadTS;
  bool hasUploadTS() => _uploadTS != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "uploadmultiplephotos" field.
  List<String>? _uploadmultiplephotos;
  List<String> get uploadmultiplephotos => _uploadmultiplephotos ?? const [];
  bool hasUploadmultiplephotos() => _uploadmultiplephotos != null;

  // "id" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  bool hasId() => _id != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _shortnote = snapshotData['shortnote'] as String?;
    _uploadTS = snapshotData['UploadTS'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _uploadmultiplephotos = getDataList(snapshotData['uploadmultiplephotos']);
    _id = snapshotData['id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Aboutusphotocollection');

  static Stream<AboutusphotocollectionRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => AboutusphotocollectionRecord.fromSnapshot(s));

  static Future<AboutusphotocollectionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AboutusphotocollectionRecord.fromSnapshot(s));

  static AboutusphotocollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AboutusphotocollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AboutusphotocollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AboutusphotocollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AboutusphotocollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AboutusphotocollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAboutusphotocollectionRecordData({
  String? title,
  String? shortnote,
  DateTime? uploadTS,
  String? image,
  DocumentReference? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'shortnote': shortnote,
      'UploadTS': uploadTS,
      'image': image,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class AboutusphotocollectionRecordDocumentEquality
    implements Equality<AboutusphotocollectionRecord> {
  const AboutusphotocollectionRecordDocumentEquality();

  @override
  bool equals(
      AboutusphotocollectionRecord? e1, AboutusphotocollectionRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.shortnote == e2?.shortnote &&
        e1?.uploadTS == e2?.uploadTS &&
        e1?.image == e2?.image &&
        listEquality.equals(
            e1?.uploadmultiplephotos, e2?.uploadmultiplephotos) &&
        e1?.id == e2?.id;
  }

  @override
  int hash(AboutusphotocollectionRecord? e) => const ListEquality().hash([
        e?.title,
        e?.shortnote,
        e?.uploadTS,
        e?.image,
        e?.uploadmultiplephotos,
        e?.id
      ]);

  @override
  bool isValidKey(Object? o) => o is AboutusphotocollectionRecord;
}
