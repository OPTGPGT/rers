import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminNotificationRecord extends FirestoreRecord {
  AdminNotificationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "notifMessage" field.
  String? _notifMessage;
  String get notifMessage => _notifMessage ?? '';
  bool hasNotifMessage() => _notifMessage != null;

  // "TS" field.
  DateTime? _ts;
  DateTime? get ts => _ts;
  bool hasTs() => _ts != null;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "userID" field.
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  // "senderName" field.
  String? _senderName;
  String get senderName => _senderName ?? '';
  bool hasSenderName() => _senderName != null;

  // "senderEmail" field.
  String? _senderEmail;
  String get senderEmail => _senderEmail ?? '';
  bool hasSenderEmail() => _senderEmail != null;

  // "pdffileupload" field.
  String? _pdffileupload;
  String get pdffileupload => _pdffileupload ?? '';
  bool hasPdffileupload() => _pdffileupload != null;

  // "notificationFile" field.
  String? _notificationFile;
  String get notificationFile => _notificationFile ?? '';
  bool hasNotificationFile() => _notificationFile != null;

  // "user_openOrnot" field.
  bool? _userOpenOrnot;
  bool get userOpenOrnot => _userOpenOrnot ?? false;
  bool hasUserOpenOrnot() => _userOpenOrnot != null;

  // "useridForUnseen" field.
  List<DocumentReference>? _useridForUnseen;
  List<DocumentReference> get useridForUnseen => _useridForUnseen ?? const [];
  bool hasUseridForUnseen() => _useridForUnseen != null;

  void _initializeFields() {
    _notifMessage = snapshotData['notifMessage'] as String?;
    _ts = snapshotData['TS'] as DateTime?;
    _title = snapshotData['Title'] as String?;
    _userID = snapshotData['userID'] as DocumentReference?;
    _senderName = snapshotData['senderName'] as String?;
    _senderEmail = snapshotData['senderEmail'] as String?;
    _pdffileupload = snapshotData['pdffileupload'] as String?;
    _notificationFile = snapshotData['notificationFile'] as String?;
    _userOpenOrnot = snapshotData['user_openOrnot'] as bool?;
    _useridForUnseen = getDataList(snapshotData['useridForUnseen']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AdminNotification');

  static Stream<AdminNotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminNotificationRecord.fromSnapshot(s));

  static Future<AdminNotificationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AdminNotificationRecord.fromSnapshot(s));

  static AdminNotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdminNotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminNotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminNotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminNotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminNotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminNotificationRecordData({
  String? notifMessage,
  DateTime? ts,
  String? title,
  DocumentReference? userID,
  String? senderName,
  String? senderEmail,
  String? pdffileupload,
  String? notificationFile,
  bool? userOpenOrnot,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'notifMessage': notifMessage,
      'TS': ts,
      'Title': title,
      'userID': userID,
      'senderName': senderName,
      'senderEmail': senderEmail,
      'pdffileupload': pdffileupload,
      'notificationFile': notificationFile,
      'user_openOrnot': userOpenOrnot,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminNotificationRecordDocumentEquality
    implements Equality<AdminNotificationRecord> {
  const AdminNotificationRecordDocumentEquality();

  @override
  bool equals(AdminNotificationRecord? e1, AdminNotificationRecord? e2) {
    const listEquality = ListEquality();
    return e1?.notifMessage == e2?.notifMessage &&
        e1?.ts == e2?.ts &&
        e1?.title == e2?.title &&
        e1?.userID == e2?.userID &&
        e1?.senderName == e2?.senderName &&
        e1?.senderEmail == e2?.senderEmail &&
        e1?.pdffileupload == e2?.pdffileupload &&
        e1?.notificationFile == e2?.notificationFile &&
        e1?.userOpenOrnot == e2?.userOpenOrnot &&
        listEquality.equals(e1?.useridForUnseen, e2?.useridForUnseen);
  }

  @override
  int hash(AdminNotificationRecord? e) => const ListEquality().hash([
        e?.notifMessage,
        e?.ts,
        e?.title,
        e?.userID,
        e?.senderName,
        e?.senderEmail,
        e?.pdffileupload,
        e?.notificationFile,
        e?.userOpenOrnot,
        e?.useridForUnseen
      ]);

  @override
  bool isValidKey(Object? o) => o is AdminNotificationRecord;
}
