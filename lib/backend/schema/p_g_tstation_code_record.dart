import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PGTstationCodeRecord extends FirestoreRecord {
  PGTstationCodeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Station" field.
  String? _station;
  String get station => _station ?? '';
  bool hasStation() => _station != null;

  // "Code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "section" field.
  String? _section;
  String get section => _section ?? '';
  bool hasSection() => _section != null;

  void _initializeFields() {
    _station = snapshotData['Station'] as String?;
    _code = snapshotData['Code'] as String?;
    _section = snapshotData['section'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PGTstationCode');

  static Stream<PGTstationCodeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PGTstationCodeRecord.fromSnapshot(s));

  static Future<PGTstationCodeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PGTstationCodeRecord.fromSnapshot(s));

  static PGTstationCodeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PGTstationCodeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PGTstationCodeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PGTstationCodeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PGTstationCodeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PGTstationCodeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPGTstationCodeRecordData({
  String? station,
  String? code,
  String? section,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Station': station,
      'Code': code,
      'section': section,
    }.withoutNulls,
  );

  return firestoreData;
}

class PGTstationCodeRecordDocumentEquality
    implements Equality<PGTstationCodeRecord> {
  const PGTstationCodeRecordDocumentEquality();

  @override
  bool equals(PGTstationCodeRecord? e1, PGTstationCodeRecord? e2) {
    return e1?.station == e2?.station &&
        e1?.code == e2?.code &&
        e1?.section == e2?.section;
  }

  @override
  int hash(PGTstationCodeRecord? e) =>
      const ListEquality().hash([e?.station, e?.code, e?.section]);

  @override
  bool isValidKey(Object? o) => o is PGTstationCodeRecord;
}
