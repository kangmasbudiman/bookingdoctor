import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingRecord extends FirestoreRecord {
  BookingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "doctorname" field.
  String? _doctorname;
  String get doctorname => _doctorname ?? '';
  bool hasDoctorname() => _doctorname != null;

  // "clientname" field.
  String? _clientname;
  String get clientname => _clientname ?? '';
  bool hasClientname() => _clientname != null;

  // "doctorimage" field.
  String? _doctorimage;
  String get doctorimage => _doctorimage ?? '';
  bool hasDoctorimage() => _doctorimage != null;

  // "doctorspeciality" field.
  String? _doctorspeciality;
  String get doctorspeciality => _doctorspeciality ?? '';
  bool hasDoctorspeciality() => _doctorspeciality != null;

  // "doctorrating" field.
  double? _doctorrating;
  double get doctorrating => _doctorrating ?? 0.0;
  bool hasDoctorrating() => _doctorrating != null;

  // "order_date" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "order_id" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "meetinglink" field.
  String? _meetinglink;
  String get meetinglink => _meetinglink ?? '';
  bool hasMeetinglink() => _meetinglink != null;

  // "booking_date" field.
  DateTime? _bookingDate;
  DateTime? get bookingDate => _bookingDate;
  bool hasBookingDate() => _bookingDate != null;

  // "booking_time" field.
  String? _bookingTime;
  String get bookingTime => _bookingTime ?? '';
  bool hasBookingTime() => _bookingTime != null;

  // "client_email" field.
  String? _clientEmail;
  String get clientEmail => _clientEmail ?? '';
  bool hasClientEmail() => _clientEmail != null;

  // "doctor_email" field.
  String? _doctorEmail;
  String get doctorEmail => _doctorEmail ?? '';
  bool hasDoctorEmail() => _doctorEmail != null;

  // "client_image" field.
  String? _clientImage;
  String get clientImage => _clientImage ?? '';
  bool hasClientImage() => _clientImage != null;

  void _initializeFields() {
    _doctorname = snapshotData['doctorname'] as String?;
    _clientname = snapshotData['clientname'] as String?;
    _doctorimage = snapshotData['doctorimage'] as String?;
    _doctorspeciality = snapshotData['doctorspeciality'] as String?;
    _doctorrating = castToType<double>(snapshotData['doctorrating']);
    _orderDate = snapshotData['order_date'] as DateTime?;
    _orderId = snapshotData['order_id'] as String?;
    _meetinglink = snapshotData['meetinglink'] as String?;
    _bookingDate = snapshotData['booking_date'] as DateTime?;
    _bookingTime = snapshotData['booking_time'] as String?;
    _clientEmail = snapshotData['client_email'] as String?;
    _doctorEmail = snapshotData['doctor_email'] as String?;
    _clientImage = snapshotData['client_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('booking');

  static Stream<BookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingRecord.fromSnapshot(s));

  static Future<BookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingRecord.fromSnapshot(s));

  static BookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingRecordData({
  String? doctorname,
  String? clientname,
  String? doctorimage,
  String? doctorspeciality,
  double? doctorrating,
  DateTime? orderDate,
  String? orderId,
  String? meetinglink,
  DateTime? bookingDate,
  String? bookingTime,
  String? clientEmail,
  String? doctorEmail,
  String? clientImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doctorname': doctorname,
      'clientname': clientname,
      'doctorimage': doctorimage,
      'doctorspeciality': doctorspeciality,
      'doctorrating': doctorrating,
      'order_date': orderDate,
      'order_id': orderId,
      'meetinglink': meetinglink,
      'booking_date': bookingDate,
      'booking_time': bookingTime,
      'client_email': clientEmail,
      'doctor_email': doctorEmail,
      'client_image': clientImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingRecordDocumentEquality implements Equality<BookingRecord> {
  const BookingRecordDocumentEquality();

  @override
  bool equals(BookingRecord? e1, BookingRecord? e2) {
    return e1?.doctorname == e2?.doctorname &&
        e1?.clientname == e2?.clientname &&
        e1?.doctorimage == e2?.doctorimage &&
        e1?.doctorspeciality == e2?.doctorspeciality &&
        e1?.doctorrating == e2?.doctorrating &&
        e1?.orderDate == e2?.orderDate &&
        e1?.orderId == e2?.orderId &&
        e1?.meetinglink == e2?.meetinglink &&
        e1?.bookingDate == e2?.bookingDate &&
        e1?.bookingTime == e2?.bookingTime &&
        e1?.clientEmail == e2?.clientEmail &&
        e1?.doctorEmail == e2?.doctorEmail &&
        e1?.clientImage == e2?.clientImage;
  }

  @override
  int hash(BookingRecord? e) => const ListEquality().hash([
        e?.doctorname,
        e?.clientname,
        e?.doctorimage,
        e?.doctorspeciality,
        e?.doctorrating,
        e?.orderDate,
        e?.orderId,
        e?.meetinglink,
        e?.bookingDate,
        e?.bookingTime,
        e?.clientEmail,
        e?.doctorEmail,
        e?.clientImage
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingRecord;
}
