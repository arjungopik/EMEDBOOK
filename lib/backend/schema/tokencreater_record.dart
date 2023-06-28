import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TokencreaterRecord extends FirestoreRecord {
  TokencreaterRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "docid" field.
  String? _docid;
  String get docid => _docid ?? '';
  bool hasDocid() => _docid != null;

  // "ctoken" field.
  int? _ctoken;
  int get ctoken => _ctoken ?? 0;
  bool hasCtoken() => _ctoken != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "bookingid" field.
  String? _bookingid;
  String get bookingid => _bookingid ?? '';
  bool hasBookingid() => _bookingid != null;

  void _initializeFields() {
    _docid = snapshotData['docid'] as String?;
    _ctoken = castToType<int>(snapshotData['ctoken']);
    _date = snapshotData['date'] as DateTime?;
    _bookingid = snapshotData['bookingid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tokencreater');

  static Stream<TokencreaterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TokencreaterRecord.fromSnapshot(s));

  static Future<TokencreaterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TokencreaterRecord.fromSnapshot(s));

  static TokencreaterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TokencreaterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TokencreaterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TokencreaterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TokencreaterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TokencreaterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTokencreaterRecordData({
  String? docid,
  int? ctoken,
  DateTime? date,
  String? bookingid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'docid': docid,
      'ctoken': ctoken,
      'date': date,
      'bookingid': bookingid,
    }.withoutNulls,
  );

  return firestoreData;
}
