import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlertmessageRecord extends FirestoreRecord {
  AlertmessageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "alertmessage" field.
  String? _alertmessage;
  String get alertmessage => _alertmessage ?? '';
  bool hasAlertmessage() => _alertmessage != null;

  // "alerttimes" field.
  DateTime? _alerttimes;
  DateTime? get alerttimes => _alerttimes;
  bool hasAlerttimes() => _alerttimes != null;

  // "alert_buttonName" field.
  String? _alertButtonName;
  String get alertButtonName => _alertButtonName ?? '';
  bool hasAlertButtonName() => _alertButtonName != null;

  // "sender_userName" field.
  String? _senderUserName;
  String get senderUserName => _senderUserName ?? '';
  bool hasSenderUserName() => _senderUserName != null;

  // "Sender_email" field.
  String? _senderEmail;
  String get senderEmail => _senderEmail ?? '';
  bool hasSenderEmail() => _senderEmail != null;

  // "alertReply" field.
  String? _alertReply;
  String get alertReply => _alertReply ?? '';
  bool hasAlertReply() => _alertReply != null;

  // "alertreplyTS" field.
  DateTime? _alertreplyTS;
  DateTime? get alertreplyTS => _alertreplyTS;
  bool hasAlertreplyTS() => _alertreplyTS != null;

  // "alertImage" field.
  String? _alertImage;
  String get alertImage => _alertImage ?? '';
  bool hasAlertImage() => _alertImage != null;

  // "message_seen_admin" field.
  bool? _messageSeenAdmin;
  bool get messageSeenAdmin => _messageSeenAdmin ?? false;
  bool hasMessageSeenAdmin() => _messageSeenAdmin != null;

  // "message_Seen_user" field.
  bool? _messageSeenUser;
  bool get messageSeenUser => _messageSeenUser ?? false;
  bool hasMessageSeenUser() => _messageSeenUser != null;

  // "alertReplysent" field.
  bool? _alertReplysent;
  bool get alertReplysent => _alertReplysent ?? false;
  bool hasAlertReplysent() => _alertReplysent != null;

  void _initializeFields() {
    _alertmessage = snapshotData['alertmessage'] as String?;
    _alerttimes = snapshotData['alerttimes'] as DateTime?;
    _alertButtonName = snapshotData['alert_buttonName'] as String?;
    _senderUserName = snapshotData['sender_userName'] as String?;
    _senderEmail = snapshotData['Sender_email'] as String?;
    _alertReply = snapshotData['alertReply'] as String?;
    _alertreplyTS = snapshotData['alertreplyTS'] as DateTime?;
    _alertImage = snapshotData['alertImage'] as String?;
    _messageSeenAdmin = snapshotData['message_seen_admin'] as bool?;
    _messageSeenUser = snapshotData['message_Seen_user'] as bool?;
    _alertReplysent = snapshotData['alertReplysent'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Alertmessage');

  static Stream<AlertmessageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlertmessageRecord.fromSnapshot(s));

  static Future<AlertmessageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlertmessageRecord.fromSnapshot(s));

  static AlertmessageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AlertmessageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlertmessageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlertmessageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlertmessageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlertmessageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlertmessageRecordData({
  String? alertmessage,
  DateTime? alerttimes,
  String? alertButtonName,
  String? senderUserName,
  String? senderEmail,
  String? alertReply,
  DateTime? alertreplyTS,
  String? alertImage,
  bool? messageSeenAdmin,
  bool? messageSeenUser,
  bool? alertReplysent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'alertmessage': alertmessage,
      'alerttimes': alerttimes,
      'alert_buttonName': alertButtonName,
      'sender_userName': senderUserName,
      'Sender_email': senderEmail,
      'alertReply': alertReply,
      'alertreplyTS': alertreplyTS,
      'alertImage': alertImage,
      'message_seen_admin': messageSeenAdmin,
      'message_Seen_user': messageSeenUser,
      'alertReplysent': alertReplysent,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlertmessageRecordDocumentEquality
    implements Equality<AlertmessageRecord> {
  const AlertmessageRecordDocumentEquality();

  @override
  bool equals(AlertmessageRecord? e1, AlertmessageRecord? e2) {
    return e1?.alertmessage == e2?.alertmessage &&
        e1?.alerttimes == e2?.alerttimes &&
        e1?.alertButtonName == e2?.alertButtonName &&
        e1?.senderUserName == e2?.senderUserName &&
        e1?.senderEmail == e2?.senderEmail &&
        e1?.alertReply == e2?.alertReply &&
        e1?.alertreplyTS == e2?.alertreplyTS &&
        e1?.alertImage == e2?.alertImage &&
        e1?.messageSeenAdmin == e2?.messageSeenAdmin &&
        e1?.messageSeenUser == e2?.messageSeenUser &&
        e1?.alertReplysent == e2?.alertReplysent;
  }

  @override
  int hash(AlertmessageRecord? e) => const ListEquality().hash([
        e?.alertmessage,
        e?.alerttimes,
        e?.alertButtonName,
        e?.senderUserName,
        e?.senderEmail,
        e?.alertReply,
        e?.alertreplyTS,
        e?.alertImage,
        e?.messageSeenAdmin,
        e?.messageSeenUser,
        e?.alertReplysent
      ]);

  @override
  bool isValidKey(Object? o) => o is AlertmessageRecord;
}
