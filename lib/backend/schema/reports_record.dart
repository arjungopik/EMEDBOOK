import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportsRecord extends FirestoreRecord {
  ReportsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "Prescription" field.
  String? _prescription;
  String get prescription => _prescription ?? '';
  bool hasPrescription() => _prescription != null;

  // "bp" field.
  String? _bp;
  String get bp => _bp ?? '';
  bool hasBp() => _bp != null;

  // "med1" field.
  String? _med1;
  String get med1 => _med1 ?? '';
  bool hasMed1() => _med1 != null;

  // "comment1" field.
  String? _comment1;
  String get comment1 => _comment1 ?? '';
  bool hasComment1() => _comment1 != null;

  // "med2" field.
  String? _med2;
  String get med2 => _med2 ?? '';
  bool hasMed2() => _med2 != null;

  // "comment2" field.
  String? _comment2;
  String get comment2 => _comment2 ?? '';
  bool hasComment2() => _comment2 != null;

  // "med3" field.
  String? _med3;
  String get med3 => _med3 ?? '';
  bool hasMed3() => _med3 != null;

  // "comment3" field.
  String? _comment3;
  String get comment3 => _comment3 ?? '';
  bool hasComment3() => _comment3 != null;

  // "docid" field.
  String? _docid;
  String get docid => _docid ?? '';
  bool hasDocid() => _docid != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "bookingref" field.
  DocumentReference? _bookingref;
  DocumentReference? get bookingref => _bookingref;
  bool hasBookingref() => _bookingref != null;

  void _initializeFields() {
    _condition = snapshotData['Condition'] as String?;
    _prescription = snapshotData['Prescription'] as String?;
    _bp = snapshotData['bp'] as String?;
    _med1 = snapshotData['med1'] as String?;
    _comment1 = snapshotData['comment1'] as String?;
    _med2 = snapshotData['med2'] as String?;
    _comment2 = snapshotData['comment2'] as String?;
    _med3 = snapshotData['med3'] as String?;
    _comment3 = snapshotData['comment3'] as String?;
    _docid = snapshotData['docid'] as String?;
    _userref = snapshotData['userref'] as DocumentReference?;
    _date = snapshotData['date'] as DateTime?;
    _bookingref = snapshotData['bookingref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reports');

  static Stream<ReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportsRecord.fromSnapshot(s));

  static Future<ReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportsRecord.fromSnapshot(s));

  static ReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportsRecordData({
  String? condition,
  String? prescription,
  String? bp,
  String? med1,
  String? comment1,
  String? med2,
  String? comment2,
  String? med3,
  String? comment3,
  String? docid,
  DocumentReference? userref,
  DateTime? date,
  DocumentReference? bookingref,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Condition': condition,
      'Prescription': prescription,
      'bp': bp,
      'med1': med1,
      'comment1': comment1,
      'med2': med2,
      'comment2': comment2,
      'med3': med3,
      'comment3': comment3,
      'docid': docid,
      'userref': userref,
      'date': date,
      'bookingref': bookingref,
    }.withoutNulls,
  );

  return firestoreData;
}
