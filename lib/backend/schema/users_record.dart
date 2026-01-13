import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "nome_responsavel" field.
  String? _nomeResponsavel;
  String get nomeResponsavel => _nomeResponsavel ?? '';
  bool hasNomeResponsavel() => _nomeResponsavel != null;

  // "data_nascimento_responsavel" field.
  String? _dataNascimentoResponsavel;
  String get dataNascimentoResponsavel => _dataNascimentoResponsavel ?? '';
  bool hasDataNascimentoResponsavel() => _dataNascimentoResponsavel != null;

  // "idade_crianca" field.
  int? _idadeCrianca;
  int get idadeCrianca => _idadeCrianca ?? 0;
  bool hasIdadeCrianca() => _idadeCrianca != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "aceitou_termos" field.
  bool? _aceitouTermos;
  bool get aceitouTermos => _aceitouTermos ?? false;
  bool hasAceitouTermos() => _aceitouTermos != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _nomeResponsavel = snapshotData['nome_responsavel'] as String?;
    _dataNascimentoResponsavel =
        snapshotData['data_nascimento_responsavel'] as String?;
    _idadeCrianca = castToType<int>(snapshotData['idade_crianca']);
    _photoUrl = snapshotData['photo_url'] as String?;
    _aceitouTermos = snapshotData['aceitou_termos'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? displayName,
  String? nomeResponsavel,
  String? dataNascimentoResponsavel,
  int? idadeCrianca,
  String? photoUrl,
  bool? aceitouTermos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'display_name': displayName,
      'nome_responsavel': nomeResponsavel,
      'data_nascimento_responsavel': dataNascimentoResponsavel,
      'idade_crianca': idadeCrianca,
      'photo_url': photoUrl,
      'aceitou_termos': aceitouTermos,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.displayName == e2?.displayName &&
        e1?.nomeResponsavel == e2?.nomeResponsavel &&
        e1?.dataNascimentoResponsavel == e2?.dataNascimentoResponsavel &&
        e1?.idadeCrianca == e2?.idadeCrianca &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.aceitouTermos == e2?.aceitouTermos;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.displayName,
        e?.nomeResponsavel,
        e?.dataNascimentoResponsavel,
        e?.idadeCrianca,
        e?.photoUrl,
        e?.aceitouTermos
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
