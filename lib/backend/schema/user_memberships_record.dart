import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserMembershipsRecord extends FirestoreRecord {
  UserMembershipsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "membershipId" field.
  String? _membershipId;
  String get membershipId => _membershipId ?? '';
  bool hasMembershipId() => _membershipId != null;

  // "expiryDate" field.
  String? _expiryDate;
  String get expiryDate => _expiryDate ?? '';
  bool hasExpiryDate() => _expiryDate != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _membershipId = snapshotData['membershipId'] as String?;
    _expiryDate = snapshotData['expiryDate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_memberships');

  static Stream<UserMembershipsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserMembershipsRecord.fromSnapshot(s));

  static Future<UserMembershipsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserMembershipsRecord.fromSnapshot(s));

  static UserMembershipsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserMembershipsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserMembershipsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserMembershipsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserMembershipsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserMembershipsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserMembershipsRecordData({
  String? userId,
  String? membershipId,
  String? expiryDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'membershipId': membershipId,
      'expiryDate': expiryDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserMembershipsRecordDocumentEquality
    implements Equality<UserMembershipsRecord> {
  const UserMembershipsRecordDocumentEquality();

  @override
  bool equals(UserMembershipsRecord? e1, UserMembershipsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.membershipId == e2?.membershipId &&
        e1?.expiryDate == e2?.expiryDate;
  }

  @override
  int hash(UserMembershipsRecord? e) =>
      const ListEquality().hash([e?.userId, e?.membershipId, e?.expiryDate]);

  @override
  bool isValidKey(Object? o) => o is UserMembershipsRecord;
}
