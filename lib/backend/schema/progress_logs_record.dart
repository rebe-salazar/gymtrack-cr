import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProgressLogsRecord extends FirestoreRecord {
  ProgressLogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  bool hasWeight() => _weight != null;

  // "imc" field.
  double? _imc;
  double get imc => _imc ?? 0.0;
  bool hasImc() => _imc != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _weight = castToType<double>(snapshotData['weight']);
    _imc = castToType<double>(snapshotData['imc']);
    _date = snapshotData['date'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('progress_logs');

  static Stream<ProgressLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProgressLogsRecord.fromSnapshot(s));

  static Future<ProgressLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProgressLogsRecord.fromSnapshot(s));

  static ProgressLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProgressLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProgressLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProgressLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProgressLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProgressLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProgressLogsRecordData({
  String? userId,
  double? weight,
  double? imc,
  String? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'weight': weight,
      'imc': imc,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProgressLogsRecordDocumentEquality
    implements Equality<ProgressLogsRecord> {
  const ProgressLogsRecordDocumentEquality();

  @override
  bool equals(ProgressLogsRecord? e1, ProgressLogsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.weight == e2?.weight &&
        e1?.imc == e2?.imc &&
        e1?.date == e2?.date;
  }

  @override
  int hash(ProgressLogsRecord? e) =>
      const ListEquality().hash([e?.userId, e?.weight, e?.imc, e?.date]);

  @override
  bool isValidKey(Object? o) => o is ProgressLogsRecord;
}
