import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassesRecord extends FirestoreRecord {
  ClassesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "instructorId" field.
  String? _instructorId;
  String get instructorId => _instructorId ?? '';
  bool hasInstructorId() => _instructorId != null;

  // "startTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  bool hasStartTime() => _startTime != null;

  // "totalSpots" field.
  int? _totalSpots;
  int get totalSpots => _totalSpots ?? 0;
  bool hasTotalSpots() => _totalSpots != null;

  // "availableSpots" field.
  int? _availableSpots;
  int get availableSpots => _availableSpots ?? 0;
  bool hasAvailableSpots() => _availableSpots != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _instructorId = snapshotData['instructorId'] as String?;
    _startTime = snapshotData['startTime'] as String?;
    _totalSpots = castToType<int>(snapshotData['totalSpots']);
    _availableSpots = castToType<int>(snapshotData['availableSpots']);
    _status = snapshotData['status'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('classes');

  static Stream<ClassesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassesRecord.fromSnapshot(s));

  static Future<ClassesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClassesRecord.fromSnapshot(s));

  static ClassesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassesRecordData({
  String? title,
  String? instructorId,
  String? startTime,
  int? totalSpots,
  int? availableSpots,
  String? status,
  String? imageUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'instructorId': instructorId,
      'startTime': startTime,
      'totalSpots': totalSpots,
      'availableSpots': availableSpots,
      'status': status,
      'imageUrl': imageUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassesRecordDocumentEquality implements Equality<ClassesRecord> {
  const ClassesRecordDocumentEquality();

  @override
  bool equals(ClassesRecord? e1, ClassesRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.instructorId == e2?.instructorId &&
        e1?.startTime == e2?.startTime &&
        e1?.totalSpots == e2?.totalSpots &&
        e1?.availableSpots == e2?.availableSpots &&
        e1?.status == e2?.status &&
        e1?.imageUrl == e2?.imageUrl;
  }

  @override
  int hash(ClassesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.instructorId,
        e?.startTime,
        e?.totalSpots,
        e?.availableSpots,
        e?.status,
        e?.imageUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is ClassesRecord;
}
