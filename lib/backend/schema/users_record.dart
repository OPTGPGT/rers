import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "members_status" field.
  String? _membersStatus;
  String get membersStatus => _membersStatus ?? '';
  bool hasMembersStatus() => _membersStatus != null;

  // "is_admin" field.
  bool? _isAdmin;
  bool get isAdmin => _isAdmin ?? false;
  bool hasIsAdmin() => _isAdmin != null;

  // "userRole" field.
  String? _userRole;
  String get userRole => _userRole ?? '';
  bool hasUserRole() => _userRole != null;

  // "last_Active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "employeepf_Number" field.
  String? _employeepfNumber;
  String get employeepfNumber => _employeepfNumber ?? '';
  bool hasEmployeepfNumber() => _employeepfNumber != null;

  // "employee_HQ" field.
  String? _employeeHQ;
  String get employeeHQ => _employeeHQ ?? '';
  bool hasEmployeeHQ() => _employeeHQ != null;

  // "employee_desgination" field.
  String? _employeeDesgination;
  String get employeeDesgination => _employeeDesgination ?? '';
  bool hasEmployeeDesgination() => _employeeDesgination != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _membersStatus = snapshotData['members_status'] as String?;
    _isAdmin = snapshotData['is_admin'] as bool?;
    _userRole = snapshotData['userRole'] as String?;
    _lastActiveTime = snapshotData['last_Active_time'] as DateTime?;
    _employeepfNumber = snapshotData['employeepf_Number'] as String?;
    _employeeHQ = snapshotData['employee_HQ'] as String?;
    _employeeDesgination = snapshotData['employee_desgination'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? membersStatus,
  bool? isAdmin,
  String? userRole,
  DateTime? lastActiveTime,
  String? employeepfNumber,
  String? employeeHQ,
  String? employeeDesgination,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'members_status': membersStatus,
      'is_admin': isAdmin,
      'userRole': userRole,
      'last_Active_time': lastActiveTime,
      'employeepf_Number': employeepfNumber,
      'employee_HQ': employeeHQ,
      'employee_desgination': employeeDesgination,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.membersStatus == e2?.membersStatus &&
        e1?.isAdmin == e2?.isAdmin &&
        e1?.userRole == e2?.userRole &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.employeepfNumber == e2?.employeepfNumber &&
        e1?.employeeHQ == e2?.employeeHQ &&
        e1?.employeeDesgination == e2?.employeeDesgination;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.membersStatus,
        e?.isAdmin,
        e?.userRole,
        e?.lastActiveTime,
        e?.employeepfNumber,
        e?.employeeHQ,
        e?.employeeDesgination
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
