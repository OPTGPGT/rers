import 'package:collection/collection.dart';

enum Designation {
  TI,
  SM,
  PMAN,
  TMR,
  TNC,
  User,
  Admin,
}

enum Station {
  MDKI,
  ETMD,
  WRA,
  CLMD,
  KJKD,
  KTKU,
  PGT,
  PGTN,
  PDGM,
  KLGD,
  MMDA,
  MXM,
  POY,
  CNV,
  PLL,
  LDY,
  OTP,
  MNUR,
  SRR,
  AAM,
  VNB,
  NIL,
  KRKD,
  PTB,
  PUM,
  KTU,
  TUA,
  TIR,
  TA,
  PGI,
  KN,
  FK,
  KUL,
  CLT,
  WH,
  ETR,
  QLD,
  TKT,
  BDJ,
  MHE,
  TLY,
  ETK,
  CS,
  CAN,
  VAPM,
  KPQ,
  PAZ,
  PAY,
  CHV,
  NLE,
  KZE,
  KQK,
  KGQ,
  KMQ,
  MJS,
  ULL,
  NTVT,
  MAQ,
  MAJN,
  PADL,
  JOKT,
  PNMB,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Designation):
      return Designation.values.deserialize(value) as T?;
    case (Station):
      return Station.values.deserialize(value) as T?;
    default:
      return null;
  }
}
