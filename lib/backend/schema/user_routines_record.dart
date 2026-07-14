import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRoutinesRecord extends FirestoreRecord {
  UserRoutinesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "routineId" field.
  String? _routineId;
  String get routineId => _routineId ?? '';
  bool hasRoutineId() => _routineId != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _routineId = snapshotData['routineId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_routines');

  static Stream<UserRoutinesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRoutinesRecord.fromSnapshot(s));

  static Future<UserRoutinesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRoutinesRecord.fromSnapshot(s));

  static UserRoutinesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserRoutinesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRoutinesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRoutinesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRoutinesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRoutinesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRoutinesRecordData({
  String? userId,
  String? routineId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'routineId': routineId,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRoutinesRecordDocumentEquality
    implements Equality<UserRoutinesRecord> {
  const UserRoutinesRecordDocumentEquality();

  @override
  bool equals(UserRoutinesRecord? e1, UserRoutinesRecord? e2) {
    return e1?.userId == e2?.userId && e1?.routineId == e2?.routineId;
  }

  @override
  int hash(UserRoutinesRecord? e) =>
      const ListEquality().hash([e?.userId, e?.routineId]);

  @override
  bool isValidKey(Object? o) => o is UserRoutinesRecord;
}
