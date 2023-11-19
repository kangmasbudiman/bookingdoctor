import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsMessageRecord extends FirestoreRecord {
  ChatsMessageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "chat_user" field.
  DocumentReference? _chatUser;
  DocumentReference? get chatUser => _chatUser;
  bool hasChatUser() => _chatUser != null;

  // "timestime" field.
  DateTime? _timestime;
  DateTime? get timestime => _timestime;
  bool hasTimestime() => _timestime != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "test" field.
  String? _test;
  String get test => _test ?? '';
  bool hasTest() => _test != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _chatUser = snapshotData['chat_user'] as DocumentReference?;
    _timestime = snapshotData['timestime'] as DateTime?;
    _image = snapshotData['image'] as String?;
    _test = snapshotData['test'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats_message');

  static Stream<ChatsMessageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsMessageRecord.fromSnapshot(s));

  static Future<ChatsMessageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsMessageRecord.fromSnapshot(s));

  static ChatsMessageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatsMessageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsMessageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsMessageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsMessageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsMessageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsMessageRecordData({
  DocumentReference? user,
  DocumentReference? chatUser,
  DateTime? timestime,
  String? image,
  String? test,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'chat_user': chatUser,
      'timestime': timestime,
      'image': image,
      'test': test,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsMessageRecordDocumentEquality
    implements Equality<ChatsMessageRecord> {
  const ChatsMessageRecordDocumentEquality();

  @override
  bool equals(ChatsMessageRecord? e1, ChatsMessageRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.chatUser == e2?.chatUser &&
        e1?.timestime == e2?.timestime &&
        e1?.image == e2?.image &&
        e1?.test == e2?.test;
  }

  @override
  int hash(ChatsMessageRecord? e) => const ListEquality()
      .hash([e?.user, e?.chatUser, e?.timestime, e?.image, e?.test]);

  @override
  bool isValidKey(Object? o) => o is ChatsMessageRecord;
}
