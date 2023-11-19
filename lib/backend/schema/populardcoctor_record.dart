import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PopulardcoctorRecord extends FirestoreRecord {
  PopulardcoctorRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "spesialis" field.
  String? _spesialis;
  String get spesialis => _spesialis ?? '';
  bool hasSpesialis() => _spesialis != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "rating" field.
  double? _rating;
  double get rating => _rating ?? 0.0;
  bool hasRating() => _rating != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "latlang" field.
  LatLng? _latlang;
  LatLng? get latlang => _latlang;
  bool hasLatlang() => _latlang != null;

  // "meetinglink" field.
  String? _meetinglink;
  String get meetinglink => _meetinglink ?? '';
  bool hasMeetinglink() => _meetinglink != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _spesialis = snapshotData['spesialis'] as String?;
    _image = snapshotData['image'] as String?;
    _rating = castToType<double>(snapshotData['rating']);
    _bio = snapshotData['bio'] as String?;
    _email = snapshotData['email'] as String?;
    _latlang = snapshotData['latlang'] as LatLng?;
    _meetinglink = snapshotData['meetinglink'] as String?;
    _price = castToType<double>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('populardcoctor');

  static Stream<PopulardcoctorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PopulardcoctorRecord.fromSnapshot(s));

  static Future<PopulardcoctorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PopulardcoctorRecord.fromSnapshot(s));

  static PopulardcoctorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PopulardcoctorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PopulardcoctorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PopulardcoctorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PopulardcoctorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PopulardcoctorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPopulardcoctorRecordData({
  String? name,
  String? spesialis,
  String? image,
  double? rating,
  String? bio,
  String? email,
  LatLng? latlang,
  String? meetinglink,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'spesialis': spesialis,
      'image': image,
      'rating': rating,
      'bio': bio,
      'email': email,
      'latlang': latlang,
      'meetinglink': meetinglink,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class PopulardcoctorRecordDocumentEquality
    implements Equality<PopulardcoctorRecord> {
  const PopulardcoctorRecordDocumentEquality();

  @override
  bool equals(PopulardcoctorRecord? e1, PopulardcoctorRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.spesialis == e2?.spesialis &&
        e1?.image == e2?.image &&
        e1?.rating == e2?.rating &&
        e1?.bio == e2?.bio &&
        e1?.email == e2?.email &&
        e1?.latlang == e2?.latlang &&
        e1?.meetinglink == e2?.meetinglink &&
        e1?.price == e2?.price;
  }

  @override
  int hash(PopulardcoctorRecord? e) => const ListEquality().hash([
        e?.name,
        e?.spesialis,
        e?.image,
        e?.rating,
        e?.bio,
        e?.email,
        e?.latlang,
        e?.meetinglink,
        e?.price
      ]);

  @override
  bool isValidKey(Object? o) => o is PopulardcoctorRecord;
}
