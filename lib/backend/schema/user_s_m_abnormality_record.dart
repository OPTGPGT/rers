import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserSMAbnormalityRecord extends FirestoreRecord {
  UserSMAbnormalityRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  bool hasUserID() => _userID != null;

  // "TS" field.
  DateTime? _ts;
  DateTime? get ts => _ts;
  bool hasTs() => _ts != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "TrainNo" field.
  String? _trainNo;
  String get trainNo => _trainNo ?? '';
  bool hasTrainNo() => _trainNo != null;

  // "LocoNo" field.
  String? _locoNo;
  String get locoNo => _locoNo ?? '';
  bool hasLocoNo() => _locoNo != null;

  // "Section" field.
  String? _section;
  String get section => _section ?? '';
  bool hasSection() => _section != null;

  // "abnormalityhead" field.
  String? _abnormalityhead;
  String get abnormalityhead => _abnormalityhead ?? '';
  bool hasAbnormalityhead() => _abnormalityhead != null;

  // "abnTime" field.
  DateTime? _abnTime;
  DateTime? get abnTime => _abnTime;
  bool hasAbnTime() => _abnTime != null;

  // "abnsubhead" field.
  String? _abnsubhead;
  String get abnsubhead => _abnsubhead ?? '';
  bool hasAbnsubhead() => _abnsubhead != null;

  // "abnRemarks" field.
  String? _abnRemarks;
  String get abnRemarks => _abnRemarks ?? '';
  bool hasAbnRemarks() => _abnRemarks != null;

  // "abnstation" field.
  String? _abnstation;
  String get abnstation => _abnstation ?? '';
  bool hasAbnstation() => _abnstation != null;

  // "adminstatusmainpage" field.
  bool? _adminstatusmainpage;
  bool get adminstatusmainpage => _adminstatusmainpage ?? false;
  bool hasAdminstatusmainpage() => _adminstatusmainpage != null;

  // "abnclosedstatus" field.
  bool? _abnclosedstatus;
  bool get abnclosedstatus => _abnclosedstatus ?? false;
  bool hasAbnclosedstatus() => _abnclosedstatus != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as String?;
    _ts = snapshotData['TS'] as DateTime?;
    _userName = snapshotData['userName'] as String?;
    _trainNo = snapshotData['TrainNo'] as String?;
    _locoNo = snapshotData['LocoNo'] as String?;
    _section = snapshotData['Section'] as String?;
    _abnormalityhead = snapshotData['abnormalityhead'] as String?;
    _abnTime = snapshotData['abnTime'] as DateTime?;
    _abnsubhead = snapshotData['abnsubhead'] as String?;
    _abnRemarks = snapshotData['abnRemarks'] as String?;
    _abnstation = snapshotData['abnstation'] as String?;
    _adminstatusmainpage = snapshotData['adminstatusmainpage'] as bool?;
    _abnclosedstatus = snapshotData['abnclosedstatus'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userSMAbnormality');

  static Stream<UserSMAbnormalityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserSMAbnormalityRecord.fromSnapshot(s));

  static Future<UserSMAbnormalityRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UserSMAbnormalityRecord.fromSnapshot(s));

  static UserSMAbnormalityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserSMAbnormalityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserSMAbnormalityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserSMAbnormalityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserSMAbnormalityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserSMAbnormalityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserSMAbnormalityRecordData({
  String? userID,
  DateTime? ts,
  String? userName,
  String? trainNo,
  String? locoNo,
  String? section,
  String? abnormalityhead,
  DateTime? abnTime,
  String? abnsubhead,
  String? abnRemarks,
  String? abnstation,
  bool? adminstatusmainpage,
  bool? abnclosedstatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'TS': ts,
      'userName': userName,
      'TrainNo': trainNo,
      'LocoNo': locoNo,
      'Section': section,
      'abnormalityhead': abnormalityhead,
      'abnTime': abnTime,
      'abnsubhead': abnsubhead,
      'abnRemarks': abnRemarks,
      'abnstation': abnstation,
      'adminstatusmainpage': adminstatusmainpage,
      'abnclosedstatus': abnclosedstatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserSMAbnormalityRecordDocumentEquality
    implements Equality<UserSMAbnormalityRecord> {
  const UserSMAbnormalityRecordDocumentEquality();

  @override
  bool equals(UserSMAbnormalityRecord? e1, UserSMAbnormalityRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.ts == e2?.ts &&
        e1?.userName == e2?.userName &&
        e1?.trainNo == e2?.trainNo &&
        e1?.locoNo == e2?.locoNo &&
        e1?.section == e2?.section &&
        e1?.abnormalityhead == e2?.abnormalityhead &&
        e1?.abnTime == e2?.abnTime &&
        e1?.abnsubhead == e2?.abnsubhead &&
        e1?.abnRemarks == e2?.abnRemarks &&
        e1?.abnstation == e2?.abnstation &&
        e1?.adminstatusmainpage == e2?.adminstatusmainpage &&
        e1?.abnclosedstatus == e2?.abnclosedstatus;
  }

  @override
  int hash(UserSMAbnormalityRecord? e) => const ListEquality().hash([
        e?.userID,
        e?.ts,
        e?.userName,
        e?.trainNo,
        e?.locoNo,
        e?.section,
        e?.abnormalityhead,
        e?.abnTime,
        e?.abnsubhead,
        e?.abnRemarks,
        e?.abnstation,
        e?.adminstatusmainpage,
        e?.abnclosedstatus
      ]);

  @override
  bool isValidKey(Object? o) => o is UserSMAbnormalityRecord;
}
