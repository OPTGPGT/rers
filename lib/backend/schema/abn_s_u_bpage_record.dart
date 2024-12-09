import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AbnSUBpageRecord extends FirestoreRecord {
  AbnSUBpageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "adminreply" field.
  String? _adminreply;
  String get adminreply => _adminreply ?? '';
  bool hasAdminreply() => _adminreply != null;

  // "replyTS" field.
  DateTime? _replyTS;
  DateTime? get replyTS => _replyTS;
  bool hasReplyTS() => _replyTS != null;

  // "adminrepliedstatus" field.
  bool? _adminrepliedstatus;
  bool get adminrepliedstatus => _adminrepliedstatus ?? false;
  bool hasAdminrepliedstatus() => _adminrepliedstatus != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _adminreply = snapshotData['adminreply'] as String?;
    _replyTS = snapshotData['replyTS'] as DateTime?;
    _adminrepliedstatus = snapshotData['adminrepliedstatus'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('abnSUBpage')
          : FirebaseFirestore.instance.collectionGroup('abnSUBpage');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('abnSUBpage').doc(id);

  static Stream<AbnSUBpageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AbnSUBpageRecord.fromSnapshot(s));

  static Future<AbnSUBpageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AbnSUBpageRecord.fromSnapshot(s));

  static AbnSUBpageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AbnSUBpageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AbnSUBpageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AbnSUBpageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AbnSUBpageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AbnSUBpageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAbnSUBpageRecordData({
  String? adminreply,
  DateTime? replyTS,
  bool? adminrepliedstatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'adminreply': adminreply,
      'replyTS': replyTS,
      'adminrepliedstatus': adminrepliedstatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class AbnSUBpageRecordDocumentEquality implements Equality<AbnSUBpageRecord> {
  const AbnSUBpageRecordDocumentEquality();

  @override
  bool equals(AbnSUBpageRecord? e1, AbnSUBpageRecord? e2) {
    return e1?.adminreply == e2?.adminreply &&
        e1?.replyTS == e2?.replyTS &&
        e1?.adminrepliedstatus == e2?.adminrepliedstatus;
  }

  @override
  int hash(AbnSUBpageRecord? e) => const ListEquality()
      .hash([e?.adminreply, e?.replyTS, e?.adminrepliedstatus]);

  @override
  bool isValidKey(Object? o) => o is AbnSUBpageRecord;
}
