import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembershipsRecord extends FirestoreRecord {
  MembershipsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "planName" field.
  String? _planName;
  String get planName => _planName ?? '';
  bool hasPlanName() => _planName != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "durationMonths" field.
  int? _durationMonths;
  int get durationMonths => _durationMonths ?? 0;
  bool hasDurationMonths() => _durationMonths != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _planName = snapshotData['planName'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _durationMonths = castToType<int>(snapshotData['durationMonths']);
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('memberships');

  static Stream<MembershipsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembershipsRecord.fromSnapshot(s));

  static Future<MembershipsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembershipsRecord.fromSnapshot(s));

  static MembershipsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembershipsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembershipsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembershipsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembershipsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembershipsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembershipsRecordData({
  String? planName,
  double? price,
  int? durationMonths,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'planName': planName,
      'price': price,
      'durationMonths': durationMonths,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class MembershipsRecordDocumentEquality implements Equality<MembershipsRecord> {
  const MembershipsRecordDocumentEquality();

  @override
  bool equals(MembershipsRecord? e1, MembershipsRecord? e2) {
    return e1?.planName == e2?.planName &&
        e1?.price == e2?.price &&
        e1?.durationMonths == e2?.durationMonths &&
        e1?.description == e2?.description;
  }

  @override
  int hash(MembershipsRecord? e) => const ListEquality()
      .hash([e?.planName, e?.price, e?.durationMonths, e?.description]);

  @override
  bool isValidKey(Object? o) => o is MembershipsRecord;
}
