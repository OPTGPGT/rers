import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserComplaintsRecord extends FirestoreRecord {
  UserComplaintsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  // "stationName" field.
  String? _stationName;
  String get stationName => _stationName ?? '';
  bool hasStationName() => _stationName != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  // "desscription" field.
  String? _desscription;
  String get desscription => _desscription ?? '';
  bool hasDesscription() => _desscription != null;

  // "remarks" field.
  String? _remarks;
  String get remarks => _remarks ?? '';
  bool hasRemarks() => _remarks != null;

  // "complaintsimage" field.
  List<String>? _complaintsimage;
  List<String> get complaintsimage => _complaintsimage ?? const [];
  bool hasComplaintsimage() => _complaintsimage != null;

  // "serName" field.
  String? _serName;
  String get serName => _serName ?? '';
  bool hasSerName() => _serName != null;

  // "userMail" field.
  String? _userMail;
  String get userMail => _userMail ?? '';
  bool hasUserMail() => _userMail != null;

  void _initializeFields() {
    _userid = snapshotData['userid'] as DocumentReference?;
    _stationName = snapshotData['stationName'] as String?;
    _dateTime = snapshotData['dateTime'] as DateTime?;
    _desscription = snapshotData['desscription'] as String?;
    _remarks = snapshotData['remarks'] as String?;
    _complaintsimage = getDataList(snapshotData['complaintsimage']);
    _serName = snapshotData['serName'] as String?;
    _userMail = snapshotData['userMail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userComplaints');

  static Stream<UserComplaintsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserComplaintsRecord.fromSnapshot(s));

  static Future<UserComplaintsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserComplaintsRecord.fromSnapshot(s));

  static UserComplaintsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserComplaintsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserComplaintsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserComplaintsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserComplaintsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserComplaintsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserComplaintsRecordData({
  DocumentReference? userid,
  String? stationName,
  DateTime? dateTime,
  String? desscription,
  String? remarks,
  String? serName,
  String? userMail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userid': userid,
      'stationName': stationName,
      'dateTime': dateTime,
      'desscription': desscription,
      'remarks': remarks,
      'serName': serName,
      'userMail': userMail,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserComplaintsRecordDocumentEquality
    implements Equality<UserComplaintsRecord> {
  const UserComplaintsRecordDocumentEquality();

  @override
  bool equals(UserComplaintsRecord? e1, UserComplaintsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userid == e2?.userid &&
        e1?.stationName == e2?.stationName &&
        e1?.dateTime == e2?.dateTime &&
        e1?.desscription == e2?.desscription &&
        e1?.remarks == e2?.remarks &&
        listEquality.equals(e1?.complaintsimage, e2?.complaintsimage) &&
        e1?.serName == e2?.serName &&
        e1?.userMail == e2?.userMail;
  }

  @override
  int hash(UserComplaintsRecord? e) => const ListEquality().hash([
        e?.userid,
        e?.stationName,
        e?.dateTime,
        e?.desscription,
        e?.remarks,
        e?.complaintsimage,
        e?.serName,
        e?.userMail
      ]);

  @override
  bool isValidKey(Object? o) => o is UserComplaintsRecord;
}
