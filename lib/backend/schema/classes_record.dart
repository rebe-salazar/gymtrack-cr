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

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "instructorRef" field.
  DocumentReference? _instructorRef;
  DocumentReference? get instructorRef => _instructorRef;
  bool hasInstructorRef() => _instructorRef != null;

  // "startDayTime" field.
  DateTime? _startDayTime;
  DateTime? get startDayTime => _startDayTime;
  bool hasStartDayTime() => _startDayTime != null;

  // "durationMinutes" field.
  int? _durationMinutes;
  int get durationMinutes => _durationMinutes ?? 0;
  bool hasDurationMinutes() => _durationMinutes != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _instructorId = snapshotData['instructorId'] as String?;
    _startTime = snapshotData['startTime'] as String?;
    _totalSpots = castToType<int>(snapshotData['totalSpots']);
    _availableSpots = castToType<int>(snapshotData['availableSpots']);
    _status = snapshotData['status'] as String?;
    _imageUrl = snapshotData['imageUrl'] as String?;
    _category = snapshotData['category'] as String?;
    _description = snapshotData['description'] as String?;
    _instructorRef = snapshotData['instructorRef'] as DocumentReference?;
    _startDayTime = snapshotData['startDayTime'] as DateTime?;
    _durationMinutes = castToType<int>(snapshotData['durationMinutes']);
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
  String? category,
  String? description,
  DocumentReference? instructorRef,
  DateTime? startDayTime,
  int? durationMinutes,
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
      'category': category,
      'description': description,
      'instructorRef': instructorRef,
      'startDayTime': startDayTime,
      'durationMinutes': durationMinutes,
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
        e1?.imageUrl == e2?.imageUrl &&
        e1?.category == e2?.category &&
        e1?.description == e2?.description &&
        e1?.instructorRef == e2?.instructorRef &&
        e1?.startDayTime == e2?.startDayTime &&
        e1?.durationMinutes == e2?.durationMinutes;
  }

  @override
  int hash(ClassesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.instructorId,
        e?.startTime,
        e?.totalSpots,
        e?.availableSpots,
        e?.status,
        e?.imageUrl,
        e?.category,
        e?.description,
        e?.instructorRef,
        e?.startDayTime,
        e?.durationMinutes
      ]);

  @override
  bool isValidKey(Object? o) => o is ClassesRecord;
}
