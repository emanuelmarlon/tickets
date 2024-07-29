// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BuscaUsuarioStruct extends BaseStruct {
  BuscaUsuarioStruct({
    int? id,
    String? createdAt,
    String? uid,
    String? email,
    String? nome,
    String? telefone,
    bool? transportadora,
  })  : _id = id,
        _createdAt = createdAt,
        _uid = uid,
        _email = email,
        _nome = nome,
        _telefone = telefone,
        _transportadora = transportadora;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "transportadora" field.
  bool? _transportadora;
  bool get transportadora => _transportadora ?? false;
  set transportadora(bool? val) => _transportadora = val;

  bool hasTransportadora() => _transportadora != null;

  static BuscaUsuarioStruct fromMap(Map<String, dynamic> data) =>
      BuscaUsuarioStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        uid: data['uid'] as String?,
        email: data['email'] as String?,
        nome: data['nome'] as String?,
        telefone: data['telefone'] as String?,
        transportadora: data['transportadora'] as bool?,
      );

  static BuscaUsuarioStruct? maybeFromMap(dynamic data) => data is Map
      ? BuscaUsuarioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'uid': _uid,
        'email': _email,
        'nome': _nome,
        'telefone': _telefone,
        'transportadora': _transportadora,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'transportadora': serializeParam(
          _transportadora,
          ParamType.bool,
        ),
      }.withoutNulls;

  static BuscaUsuarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      BuscaUsuarioStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        transportadora: deserializeParam(
          data['transportadora'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'BuscaUsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BuscaUsuarioStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        uid == other.uid &&
        email == other.email &&
        nome == other.nome &&
        telefone == other.telefone &&
        transportadora == other.transportadora;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, createdAt, uid, email, nome, telefone, transportadora]);
}

BuscaUsuarioStruct createBuscaUsuarioStruct({
  int? id,
  String? createdAt,
  String? uid,
  String? email,
  String? nome,
  String? telefone,
  bool? transportadora,
}) =>
    BuscaUsuarioStruct(
      id: id,
      createdAt: createdAt,
      uid: uid,
      email: email,
      nome: nome,
      telefone: telefone,
      transportadora: transportadora,
    );
