import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsercounsellingdetailsRecord extends FirestoreRecord {
  UsercounsellingdetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "counsellorName" field.
  String? _counsellorName;
  String get counsellorName => _counsellorName ?? '';
  bool hasCounsellorName() => _counsellorName != null;

  // "TS" field.
  DateTime? _ts;
  DateTime? get ts => _ts;
  bool hasTs() => _ts != null;

  // "stationName" field.
  String? _stationName;
  String get stationName => _stationName ?? '';
  bool hasStationName() => _stationName != null;

  // "EmployeeNumber" field.
  String? _employeeNumber;
  String get employeeNumber => _employeeNumber ?? '';
  bool hasEmployeeNumber() => _employeeNumber != null;

  // "Shortdescription" field.
  String? _shortdescription;
  String get shortdescription => _shortdescription ?? '';
  bool hasShortdescription() => _shortdescription != null;

  // "imagepath" field.
  String? _imagepath;
  String get imagepath => _imagepath ?? '';
  bool hasImagepath() => _imagepath != null;

  // "issubmitted" field.
  bool? _issubmitted;
  bool get issubmitted => _issubmitted ?? false;
  bool hasIssubmitted() => _issubmitted != null;

  // "datapassed" field.
  bool? _datapassed;
  bool get datapassed => _datapassed ?? false;
  bool hasDatapassed() => _datapassed != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _counsellorName = snapshotData['counsellorName'] as String?;
    _ts = snapshotData['TS'] as DateTime?;
    _stationName = snapshotData['stationName'] as String?;
    _employeeNumber = snapshotData['EmployeeNumber'] as String?;
    _shortdescription = snapshotData['Shortdescription'] as String?;
    _imagepath = snapshotData['imagepath'] as String?;
    _issubmitted = snapshotData['issubmitted'] as bool?;
    _datapassed = snapshotData['datapassed'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usercounsellingdetails');

  static Stream<UsercounsellingdetailsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => UsercounsellingdetailsRecord.fromSnapshot(s));

  static Future<UsercounsellingdetailsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => UsercounsellingdetailsRecord.fromSnapshot(s));

  static UsercounsellingdetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsercounsellingdetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsercounsellingdetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsercounsellingdetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsercounsellingdetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsercounsellingdetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsercounsellingdetailsRecordData({
  String? uid,
  String? counsellorName,
  DateTime? ts,
  String? stationName,
  String? employeeNumber,
  String? shortdescription,
  String? imagepath,
  bool? issubmitted,
  bool? datapassed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'counsellorName': counsellorName,
      'TS': ts,
      'stationName': stationName,
      'EmployeeNumber': employeeNumber,
      'Shortdescription': shortdescription,
      'imagepath': imagepath,
      'issubmitted': issubmitted,
      'datapassed': datapassed,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsercounsellingdetailsRecordDocumentEquality
    implements Equality<UsercounsellingdetailsRecord> {
  const UsercounsellingdetailsRecordDocumentEquality();

  @override
  bool equals(
      UsercounsellingdetailsRecord? e1, UsercounsellingdetailsRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.counsellorName == e2?.counsellorName &&
        e1?.ts == e2?.ts &&
        e1?.stationName == e2?.stationName &&
        e1?.employeeNumber == e2?.employeeNumber &&
        e1?.shortdescription == e2?.shortdescription &&
        e1?.imagepath == e2?.imagepath &&
        e1?.issubmitted == e2?.issubmitted &&
        e1?.datapassed == e2?.datapassed;
  }

  @override
  int hash(UsercounsellingdetailsRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.counsellorName,
        e?.ts,
        e?.stationName,
        e?.employeeNumber,
        e?.shortdescription,
        e?.imagepath,
        e?.issubmitted,
        e?.datapassed
      ]);

  @override
  bool isValidKey(Object? o) => o is UsercounsellingdetailsRecord;
}
