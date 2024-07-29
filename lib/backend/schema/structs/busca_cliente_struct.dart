// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BuscaClienteStruct extends BaseStruct {
  BuscaClienteStruct({
    int? id,
    String? tipo,
    String? nome,
    String? email,
    String? cpf,
    String? phone,
    String? uuid,
    String? userNs,
    String? code,
    String? createdAt,
  })  : _id = id,
        _tipo = tipo,
        _nome = nome,
        _email = email,
        _cpf = cpf,
        _phone = phone,
        _uuid = uuid,
        _userNs = userNs,
        _code = code,
        _createdAt = createdAt;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  set cpf(String? val) => _cpf = val;

  bool hasCpf() => _cpf != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "uuid" field.
  String? _uuid;
  String get uuid => _uuid ?? '';
  set uuid(String? val) => _uuid = val;

  bool hasUuid() => _uuid != null;

  // "user_ns" field.
  String? _userNs;
  String get userNs => _userNs ?? '';
  set userNs(String? val) => _userNs = val;

  bool hasUserNs() => _userNs != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static BuscaClienteStruct fromMap(Map<String, dynamic> data) =>
      BuscaClienteStruct(
        id: castToType<int>(data['id']),
        tipo: data['tipo'] as String?,
        nome: data['nome'] as String?,
        email: data['email'] as String?,
        cpf: data['cpf'] as String?,
        phone: data['phone'] as String?,
        uuid: data['uuid'] as String?,
        userNs: data['user_ns'] as String?,
        code: data['code'] as String?,
        createdAt: data['created_at'] as String?,
      );

  static BuscaClienteStruct? maybeFromMap(dynamic data) => data is Map
      ? BuscaClienteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'tipo': _tipo,
        'nome': _nome,
        'email': _email,
        'cpf': _cpf,
        'phone': _phone,
        'uuid': _uuid,
        'user_ns': _userNs,
        'code': _code,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'cpf': serializeParam(
          _cpf,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'uuid': serializeParam(
          _uuid,
          ParamType.String,
        ),
        'user_ns': serializeParam(
          _userNs,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static BuscaClienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      BuscaClienteStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        cpf: deserializeParam(
          data['cpf'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        uuid: deserializeParam(
          data['uuid'],
          ParamType.String,
          false,
        ),
        userNs: deserializeParam(
          data['user_ns'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BuscaClienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BuscaClienteStruct &&
        id == other.id &&
        tipo == other.tipo &&
        nome == other.nome &&
        email == other.email &&
        cpf == other.cpf &&
        phone == other.phone &&
        uuid == other.uuid &&
        userNs == other.userNs &&
        code == other.code &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, tipo, nome, email, cpf, phone, uuid, userNs, code, createdAt]);
}

BuscaClienteStruct createBuscaClienteStruct({
  int? id,
  String? tipo,
  String? nome,
  String? email,
  String? cpf,
  String? phone,
  String? uuid,
  String? userNs,
  String? code,
  String? createdAt,
}) =>
    BuscaClienteStruct(
      id: id,
      tipo: tipo,
      nome: nome,
      email: email,
      cpf: cpf,
      phone: phone,
      uuid: uuid,
      userNs: userNs,
      code: code,
      createdAt: createdAt,
    );
