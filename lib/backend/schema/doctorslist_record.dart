import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorslistRecord extends FirestoreRecord {
  DoctorslistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "Department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "qualification" field.
  String? _qualification;
  String get qualification => _qualification ?? '';
  bool hasQualification() => _qualification != null;

  // "available" field.
  int? _available;
  int get available => _available ?? 0;
  bool hasAvailable() => _available != null;

  // "limit" field.
  int? _limit;
  int get limit => _limit ?? 0;
  bool hasLimit() => _limit != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "ctoken" field.
  int? _ctoken;
  int get ctoken => _ctoken ?? 0;
  bool hasCtoken() => _ctoken != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _department = snapshotData['Department'] as String?;
    _qualification = snapshotData['qualification'] as String?;
    _available = castToType<int>(snapshotData['available']);
    _limit = castToType<int>(snapshotData['limit']);
    _name = snapshotData['Name'] as String?;
    _ctoken = castToType<int>(snapshotData['ctoken']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('doctorslist');

  static Stream<DoctorslistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DoctorslistRecord.fromSnapshot(s));

  static Future<DoctorslistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DoctorslistRecord.fromSnapshot(s));

  static DoctorslistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DoctorslistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DoctorslistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DoctorslistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DoctorslistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DoctorslistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDoctorslistRecordData({
  String? id,
  String? department,
  String? qualification,
  int? available,
  int? limit,
  String? name,
  int? ctoken,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'Department': department,
      'qualification': qualification,
      'available': available,
      'limit': limit,
      'Name': name,
      'ctoken': ctoken,
    }.withoutNulls,
  );

  return firestoreData;
}
