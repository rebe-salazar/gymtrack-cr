import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassReservationsRecord extends FirestoreRecord {
  ClassReservationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "classId" field.
  String? _classId;
  String get classId => _classId ?? '';
  bool hasClassId() => _classId != null;

  // "reservationDate" field.
  String? _reservationDate;
  String get reservationDate => _reservationDate ?? '';
  bool hasReservationDate() => _reservationDate != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _classId = snapshotData['classId'] as String?;
    _reservationDate = snapshotData['reservationDate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('class_reservations');

  static Stream<ClassReservationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassReservationsRecord.fromSnapshot(s));

  static Future<ClassReservationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ClassReservationsRecord.fromSnapshot(s));

  static ClassReservationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassReservationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassReservationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassReservationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassReservationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassReservationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassReservationsRecordData({
  String? userId,
  String? classId,
  String? reservationDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'classId': classId,
      'reservationDate': reservationDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassReservationsRecordDocumentEquality
    implements Equality<ClassReservationsRecord> {
  const ClassReservationsRecordDocumentEquality();

  @override
  bool equals(ClassReservationsRecord? e1, ClassReservationsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.classId == e2?.classId &&
        e1?.reservationDate == e2?.reservationDate;
  }

  @override
  int hash(ClassReservationsRecord? e) =>
      const ListEquality().hash([e?.userId, e?.classId, e?.reservationDate]);

  @override
  bool isValidKey(Object? o) => o is ClassReservationsRecord;
}
