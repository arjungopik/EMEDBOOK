import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "doctorid" field.
  String? _doctorid;
  String get doctorid => _doctorid ?? '';
  bool hasDoctorid() => _doctorid != null;

  // "doctorname" field.
  String? _doctorname;
  String get doctorname => _doctorname ?? '';
  bool hasDoctorname() => _doctorname != null;

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  // "medicines" field.
  String? _medicines;
  String get medicines => _medicines ?? '';
  bool hasMedicines() => _medicines != null;

  // "patientname" field.
  String? _patientname;
  String get patientname => _patientname ?? '';
  bool hasPatientname() => _patientname != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "tokennumber" field.
  int? _tokennumber;
  int get tokennumber => _tokennumber ?? 0;
  bool hasTokennumber() => _tokennumber != null;

  // "completed" field.
  int? _completed;
  int get completed => _completed ?? 0;
  bool hasCompleted() => _completed != null;

  // "bookingid" field.
  String? _bookingid;
  String get bookingid => _bookingid ?? '';
  bool hasBookingid() => _bookingid != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _doctorid = snapshotData['doctorid'] as String?;
    _doctorname = snapshotData['doctorname'] as String?;
    _userref = snapshotData['userref'] as DocumentReference?;
    _condition = snapshotData['condition'] as String?;
    _medicines = snapshotData['medicines'] as String?;
    _patientname = snapshotData['patientname'] as String?;
    _age = snapshotData['age'] as String?;
    _tokennumber = castToType<int>(snapshotData['tokennumber']);
    _completed = castToType<int>(snapshotData['completed']);
    _bookingid = snapshotData['bookingid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  DateTime? date,
  String? doctorid,
  String? doctorname,
  DocumentReference? userref,
  String? condition,
  String? medicines,
  String? patientname,
  String? age,
  int? tokennumber,
  int? completed,
  String? bookingid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'doctorid': doctorid,
      'doctorname': doctorname,
      'userref': userref,
      'condition': condition,
      'medicines': medicines,
      'patientname': patientname,
      'age': age,
      'tokennumber': tokennumber,
      'completed': completed,
      'bookingid': bookingid,
    }.withoutNulls,
  );

  return firestoreData;
}
