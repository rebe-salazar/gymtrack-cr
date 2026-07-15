import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoutinesRecord extends FirestoreRecord {
  RoutinesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "exercisesCount" field.
  int? _exercisesCount;
  int get exercisesCount => _exercisesCount ?? 0;
  bool hasExercisesCount() => _exercisesCount != null;

  // "estimatedDuration" field.
  int? _estimatedDuration;
  int get estimatedDuration => _estimatedDuration ?? 0;
  bool hasEstimatedDuration() => _estimatedDuration != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _exercisesCount = castToType<int>(snapshotData['exercisesCount']);
    _estimatedDuration = castToType<int>(snapshotData['estimatedDuration']);
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('routines');

  static Stream<RoutinesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoutinesRecord.fromSnapshot(s));

  static Future<RoutinesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoutinesRecord.fromSnapshot(s));

  static RoutinesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RoutinesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoutinesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoutinesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoutinesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoutinesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoutinesRecordData({
  String? title,
  String? description,
  int? exercisesCount,
  int? estimatedDuration,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'exercisesCount': exercisesCount,
      'estimatedDuration': estimatedDuration,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoutinesRecordDocumentEquality implements Equality<RoutinesRecord> {
  const RoutinesRecordDocumentEquality();

  @override
  bool equals(RoutinesRecord? e1, RoutinesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.exercisesCount == e2?.exercisesCount &&
        e1?.estimatedDuration == e2?.estimatedDuration &&
        e1?.status == e2?.status;
  }

  @override
  int hash(RoutinesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.exercisesCount,
        e?.estimatedDuration,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is RoutinesRecord;
}
