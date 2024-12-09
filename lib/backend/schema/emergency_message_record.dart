import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmergencyMessageRecord extends FirestoreRecord {
  EmergencyMessageRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "userid" field.
  List<DocumentReference>? _userid;
  List<DocumentReference> get userid => _userid ?? const [];
  bool hasUserid() => _userid != null;

  // "buttonName" field.
  String? _buttonName;
  String get buttonName => _buttonName ?? '';
  bool hasButtonName() => _buttonName != null;

  // "replyMessage" field.
  String? _replyMessage;
  String get replyMessage => _replyMessage ?? '';
  bool hasReplyMessage() => _replyMessage != null;

  // "replyTime" field.
  DateTime? _replyTime;
  DateTime? get replyTime => _replyTime;
  bool hasReplyTime() => _replyTime != null;

  // "displaySendername" field.
  String? _displaySendername;
  String get displaySendername => _displaySendername ?? '';
  bool hasDisplaySendername() => _displaySendername != null;

  // "replysent" field.
  bool? _replysent;
  bool get replysent => _replysent ?? false;
  bool hasReplysent() => _replysent != null;

  // "emergency_images" field.
  String? _emergencyImages;
  String get emergencyImages => _emergencyImages ?? '';
  bool hasEmergencyImages() => _emergencyImages != null;

  // "senderemail" field.
  String? _senderemail;
  String get senderemail => _senderemail ?? '';
  bool hasSenderemail() => _senderemail != null;

  // "em_ref" field.
  List<DocumentReference>? _emRef;
  List<DocumentReference> get emRef => _emRef ?? const [];
  bool hasEmRef() => _emRef != null;

  // "message_Seen_by_admin" field.
  bool? _messageSeenByAdmin;
  bool get messageSeenByAdmin => _messageSeenByAdmin ?? false;
  bool hasMessageSeenByAdmin() => _messageSeenByAdmin != null;

  // "replySenduserSeenORnot" field.
  bool? _replySenduserSeenORnot;
  bool get replySenduserSeenORnot => _replySenduserSeenORnot ?? false;
  bool hasReplySenduserSeenORnot() => _replySenduserSeenORnot != null;

  // "messageopenbyUser" field.
  bool? _messageopenbyUser;
  bool get messageopenbyUser => _messageopenbyUser ?? false;
  bool hasMessageopenbyUser() => _messageopenbyUser != null;

  // "ImageLatitude" field.
  LatLng? _imageLatitude;
  LatLng? get imageLatitude => _imageLatitude;
  bool hasImageLatitude() => _imageLatitude != null;

  // "useraudio" field.
  String? _useraudio;
  String get useraudio => _useraudio ?? '';
  bool hasUseraudio() => _useraudio != null;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _userid = getDataList(snapshotData['userid']);
    _buttonName = snapshotData['buttonName'] as String?;
    _replyMessage = snapshotData['replyMessage'] as String?;
    _replyTime = snapshotData['replyTime'] as DateTime?;
    _displaySendername = snapshotData['displaySendername'] as String?;
    _replysent = snapshotData['replysent'] as bool?;
    _emergencyImages = snapshotData['emergency_images'] as String?;
    _senderemail = snapshotData['senderemail'] as String?;
    _emRef = getDataList(snapshotData['em_ref']);
    _messageSeenByAdmin = snapshotData['message_Seen_by_admin'] as bool?;
    _replySenduserSeenORnot = snapshotData['replySenduserSeenORnot'] as bool?;
    _messageopenbyUser = snapshotData['messageopenbyUser'] as bool?;
    _imageLatitude = snapshotData['ImageLatitude'] as LatLng?;
    _useraudio = snapshotData['useraudio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('EmergencyMessage');

  static Stream<EmergencyMessageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmergencyMessageRecord.fromSnapshot(s));

  static Future<EmergencyMessageRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EmergencyMessageRecord.fromSnapshot(s));

  static EmergencyMessageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmergencyMessageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmergencyMessageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmergencyMessageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmergencyMessageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmergencyMessageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmergencyMessageRecordData({
  String? message,
  DateTime? timestamp,
  String? buttonName,
  String? replyMessage,
  DateTime? replyTime,
  String? displaySendername,
  bool? replysent,
  String? emergencyImages,
  String? senderemail,
  bool? messageSeenByAdmin,
  bool? replySenduserSeenORnot,
  bool? messageopenbyUser,
  LatLng? imageLatitude,
  String? useraudio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'timestamp': timestamp,
      'buttonName': buttonName,
      'replyMessage': replyMessage,
      'replyTime': replyTime,
      'displaySendername': displaySendername,
      'replysent': replysent,
      'emergency_images': emergencyImages,
      'senderemail': senderemail,
      'message_Seen_by_admin': messageSeenByAdmin,
      'replySenduserSeenORnot': replySenduserSeenORnot,
      'messageopenbyUser': messageopenbyUser,
      'ImageLatitude': imageLatitude,
      'useraudio': useraudio,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmergencyMessageRecordDocumentEquality
    implements Equality<EmergencyMessageRecord> {
  const EmergencyMessageRecordDocumentEquality();

  @override
  bool equals(EmergencyMessageRecord? e1, EmergencyMessageRecord? e2) {
    const listEquality = ListEquality();
    return e1?.message == e2?.message &&
        e1?.timestamp == e2?.timestamp &&
        listEquality.equals(e1?.userid, e2?.userid) &&
        e1?.buttonName == e2?.buttonName &&
        e1?.replyMessage == e2?.replyMessage &&
        e1?.replyTime == e2?.replyTime &&
        e1?.displaySendername == e2?.displaySendername &&
        e1?.replysent == e2?.replysent &&
        e1?.emergencyImages == e2?.emergencyImages &&
        e1?.senderemail == e2?.senderemail &&
        listEquality.equals(e1?.emRef, e2?.emRef) &&
        e1?.messageSeenByAdmin == e2?.messageSeenByAdmin &&
        e1?.replySenduserSeenORnot == e2?.replySenduserSeenORnot &&
        e1?.messageopenbyUser == e2?.messageopenbyUser &&
        e1?.imageLatitude == e2?.imageLatitude &&
        e1?.useraudio == e2?.useraudio;
  }

  @override
  int hash(EmergencyMessageRecord? e) => const ListEquality().hash([
        e?.message,
        e?.timestamp,
        e?.userid,
        e?.buttonName,
        e?.replyMessage,
        e?.replyTime,
        e?.displaySendername,
        e?.replysent,
        e?.emergencyImages,
        e?.senderemail,
        e?.emRef,
        e?.messageSeenByAdmin,
        e?.replySenduserSeenORnot,
        e?.messageopenbyUser,
        e?.imageLatitude,
        e?.useraudio
      ]);

  @override
  bool isValidKey(Object? o) => o is EmergencyMessageRecord;
}
