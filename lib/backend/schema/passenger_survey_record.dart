import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PassengerSurveyRecord extends FirestoreRecord {
  PassengerSurveyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "station" field.
  String? _station;
  String get station => _station ?? '';
  bool hasStation() => _station != null;

  // "trainNumber" field.
  String? _trainNumber;
  String get trainNumber => _trainNumber ?? '';
  bool hasTrainNumber() => _trainNumber != null;

  // "fromStation" field.
  String? _fromStation;
  String get fromStation => _fromStation ?? '';
  bool hasFromStation() => _fromStation != null;

  // "tostation" field.
  String? _tostation;
  String get tostation => _tostation ?? '';
  bool hasTostation() => _tostation != null;

  // "tickettype" field.
  String? _tickettype;
  String get tickettype => _tickettype ?? '';
  bool hasTickettype() => _tickettype != null;

  // "remark" field.
  String? _remark;
  String get remark => _remark ?? '';
  bool hasRemark() => _remark != null;

  void _initializeFields() {
    _station = snapshotData['station'] as String?;
    _trainNumber = snapshotData['trainNumber'] as String?;
    _fromStation = snapshotData['fromStation'] as String?;
    _tostation = snapshotData['tostation'] as String?;
    _tickettype = snapshotData['tickettype'] as String?;
    _remark = snapshotData['remark'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PassengerSurvey');

  static Stream<PassengerSurveyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PassengerSurveyRecord.fromSnapshot(s));

  static Future<PassengerSurveyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PassengerSurveyRecord.fromSnapshot(s));

  static PassengerSurveyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PassengerSurveyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PassengerSurveyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PassengerSurveyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PassengerSurveyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PassengerSurveyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPassengerSurveyRecordData({
  String? station,
  String? trainNumber,
  String? fromStation,
  String? tostation,
  String? tickettype,
  String? remark,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'station': station,
      'trainNumber': trainNumber,
      'fromStation': fromStation,
      'tostation': tostation,
      'tickettype': tickettype,
      'remark': remark,
    }.withoutNulls,
  );

  return firestoreData;
}

class PassengerSurveyRecordDocumentEquality
    implements Equality<PassengerSurveyRecord> {
  const PassengerSurveyRecordDocumentEquality();

  @override
  bool equals(PassengerSurveyRecord? e1, PassengerSurveyRecord? e2) {
    return e1?.station == e2?.station &&
        e1?.trainNumber == e2?.trainNumber &&
        e1?.fromStation == e2?.fromStation &&
        e1?.tostation == e2?.tostation &&
        e1?.tickettype == e2?.tickettype &&
        e1?.remark == e2?.remark;
  }

  @override
  int hash(PassengerSurveyRecord? e) => const ListEquality().hash([
        e?.station,
        e?.trainNumber,
        e?.fromStation,
        e?.tostation,
        e?.tickettype,
        e?.remark
      ]);

  @override
  bool isValidKey(Object? o) => o is PassengerSurveyRecord;
}
