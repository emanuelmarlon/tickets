// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketStruct extends BaseStruct {
  TicketStruct({
    int? id,
    String? createdAt,
    String? nome,
    String? email,
    String? telefone,
    String? numeropedido,
    String? tiposolicitacao,
    String? descricao,
    String? status,
    String? userns,
  })  : _id = id,
        _createdAt = createdAt,
        _nome = nome,
        _email = email,
        _telefone = telefone,
        _numeropedido = numeropedido,
        _tiposolicitacao = tiposolicitacao,
        _descricao = descricao,
        _status = status,
        _userns = userns;

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

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "numeropedido" field.
  String? _numeropedido;
  String get numeropedido => _numeropedido ?? '';
  set numeropedido(String? val) => _numeropedido = val;

  bool hasNumeropedido() => _numeropedido != null;

  // "tiposolicitacao" field.
  String? _tiposolicitacao;
  String get tiposolicitacao => _tiposolicitacao ?? '';
  set tiposolicitacao(String? val) => _tiposolicitacao = val;

  bool hasTiposolicitacao() => _tiposolicitacao != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "userns" field.
  String? _userns;
  String get userns => _userns ?? '';
  set userns(String? val) => _userns = val;

  bool hasUserns() => _userns != null;

  static TicketStruct fromMap(Map<String, dynamic> data) => TicketStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        nome: data['nome'] as String?,
        email: data['email'] as String?,
        telefone: data['telefone'] as String?,
        numeropedido: data['numeropedido'] as String?,
        tiposolicitacao: data['tiposolicitacao'] as String?,
        descricao: data['descricao'] as String?,
        status: data['status'] as String?,
        userns: data['userns'] as String?,
      );

  static TicketStruct? maybeFromMap(dynamic data) =>
      data is Map ? TicketStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'nome': _nome,
        'email': _email,
        'telefone': _telefone,
        'numeropedido': _numeropedido,
        'tiposolicitacao': _tiposolicitacao,
        'descricao': _descricao,
        'status': _status,
        'userns': _userns,
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
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'numeropedido': serializeParam(
          _numeropedido,
          ParamType.String,
        ),
        'tiposolicitacao': serializeParam(
          _tiposolicitacao,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'userns': serializeParam(
          _userns,
          ParamType.String,
        ),
      }.withoutNulls;

  static TicketStruct fromSerializableMap(Map<String, dynamic> data) =>
      TicketStruct(
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
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        numeropedido: deserializeParam(
          data['numeropedido'],
          ParamType.String,
          false,
        ),
        tiposolicitacao: deserializeParam(
          data['tiposolicitacao'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        userns: deserializeParam(
          data['userns'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TicketStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TicketStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nome == other.nome &&
        email == other.email &&
        telefone == other.telefone &&
        numeropedido == other.numeropedido &&
        tiposolicitacao == other.tiposolicitacao &&
        descricao == other.descricao &&
        status == other.status &&
        userns == other.userns;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        nome,
        email,
        telefone,
        numeropedido,
        tiposolicitacao,
        descricao,
        status,
        userns
      ]);
}

TicketStruct createTicketStruct({
  int? id,
  String? createdAt,
  String? nome,
  String? email,
  String? telefone,
  String? numeropedido,
  String? tiposolicitacao,
  String? descricao,
  String? status,
  String? userns,
}) =>
    TicketStruct(
      id: id,
      createdAt: createdAt,
      nome: nome,
      email: email,
      telefone: telefone,
      numeropedido: numeropedido,
      tiposolicitacao: tiposolicitacao,
      descricao: descricao,
      status: status,
      userns: userns,
    );
