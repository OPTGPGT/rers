import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StaffDetailsRecord extends FirestoreRecord {
  StaffDetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Employeeimage" field.
  String? _employeeimage;
  String get employeeimage => _employeeimage ?? '';
  bool hasEmployeeimage() => _employeeimage != null;

  // "EmpName" field.
  String? _empName;
  String get empName => _empName ?? '';
  bool hasEmpName() => _empName != null;

  // "Empstation" field.
  String? _empstation;
  String get empstation => _empstation ?? '';
  bool hasEmpstation() => _empstation != null;

  // "EmpPF" field.
  String? _empPF;
  String get empPF => _empPF ?? '';
  bool hasEmpPF() => _empPF != null;

  // "EmpDesg" field.
  Designation? _empDesg;
  Designation? get empDesg => _empDesg;
  bool hasEmpDesg() => _empDesg != null;

  // "empDeficiencies" field.
  String? _empDeficiencies;
  String get empDeficiencies => _empDeficiencies ?? '';
  bool hasEmpDeficiencies() => _empDeficiencies != null;

  // "EmpRatings" field.
  String? _empRatings;
  String get empRatings => _empRatings ?? '';
  bool hasEmpRatings() => _empRatings != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _employeeimage = snapshotData['Employeeimage'] as String?;
    _empName = snapshotData['EmpName'] as String?;
    _empstation = snapshotData['Empstation'] as String?;
    _empPF = snapshotData['EmpPF'] as String?;
    _empDesg = deserializeEnum<Designation>(snapshotData['EmpDesg']);
    _empDeficiencies = snapshotData['empDeficiencies'] as String?;
    _empRatings = snapshotData['EmpRatings'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('staffDetails')
          : FirebaseFirestore.instance.collectionGroup('staffDetails');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('staffDetails').doc(id);

  static Stream<StaffDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StaffDetailsRecord.fromSnapshot(s));

  static Future<StaffDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StaffDetailsRecord.fromSnapshot(s));

  static StaffDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StaffDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StaffDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StaffDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StaffDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StaffDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStaffDetailsRecordData({
  String? employeeimage,
  String? empName,
  String? empstation,
  String? empPF,
  Designation? empDesg,
  String? empDeficiencies,
  String? empRatings,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Employeeimage': employeeimage,
      'EmpName': empName,
      'Empstation': empstation,
      'EmpPF': empPF,
      'EmpDesg': empDesg,
      'empDeficiencies': empDeficiencies,
      'EmpRatings': empRatings,
    }.withoutNulls,
  );

  return firestoreData;
}

class StaffDetailsRecordDocumentEquality
    implements Equality<StaffDetailsRecord> {
  const StaffDetailsRecordDocumentEquality();

  @override
  bool equals(StaffDetailsRecord? e1, StaffDetailsRecord? e2) {
    return e1?.employeeimage == e2?.employeeimage &&
        e1?.empName == e2?.empName &&
        e1?.empstation == e2?.empstation &&
        e1?.empPF == e2?.empPF &&
        e1?.empDesg == e2?.empDesg &&
        e1?.empDeficiencies == e2?.empDeficiencies &&
        e1?.empRatings == e2?.empRatings;
  }

  @override
  int hash(StaffDetailsRecord? e) => const ListEquality().hash([
        e?.employeeimage,
        e?.empName,
        e?.empstation,
        e?.empPF,
        e?.empDesg,
        e?.empDeficiencies,
        e?.empRatings
      ]);

  @override
  bool isValidKey(Object? o) => o is StaffDetailsRecord;
}
