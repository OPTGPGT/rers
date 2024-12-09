import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminNotisubpageRecord extends FirestoreRecord {
  AdminNotisubpageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "openbyUser" field.
  bool? _openbyUser;
  bool get openbyUser => _openbyUser ?? false;
  bool hasOpenbyUser() => _openbyUser != null;

  // "userdetailhowopened" field.
  String? _userdetailhowopened;
  String get userdetailhowopened => _userdetailhowopened ?? '';
  bool hasUserdetailhowopened() => _userdetailhowopened != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _openbyUser = snapshotData['openbyUser'] as bool?;
    _userdetailhowopened = snapshotData['userdetailhowopened'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('adminNotisubpage')
          : FirebaseFirestore.instance.collectionGroup('adminNotisubpage');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('adminNotisubpage').doc(id);

  static Stream<AdminNotisubpageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminNotisubpageRecord.fromSnapshot(s));

  static Future<AdminNotisubpageRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AdminNotisubpageRecord.fromSnapshot(s));

  static AdminNotisubpageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdminNotisubpageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminNotisubpageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminNotisubpageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminNotisubpageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminNotisubpageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminNotisubpageRecordData({
  bool? openbyUser,
  String? userdetailhowopened,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'openbyUser': openbyUser,
      'userdetailhowopened': userdetailhowopened,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminNotisubpageRecordDocumentEquality
    implements Equality<AdminNotisubpageRecord> {
  const AdminNotisubpageRecordDocumentEquality();

  @override
  bool equals(AdminNotisubpageRecord? e1, AdminNotisubpageRecord? e2) {
    return e1?.openbyUser == e2?.openbyUser &&
        e1?.userdetailhowopened == e2?.userdetailhowopened;
  }

  @override
  int hash(AdminNotisubpageRecord? e) =>
      const ListEquality().hash([e?.openbyUser, e?.userdetailhowopened]);

  @override
  bool isValidKey(Object? o) => o is AdminNotisubpageRecord;
}
