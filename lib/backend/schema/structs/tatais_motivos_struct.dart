// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TataisMotivosStruct extends BaseStruct {
  TataisMotivosStruct({
    String? motivo,
    int? quantidade,
  })  : _motivo = motivo,
        _quantidade = quantidade;

  // "motivo" field.
  String? _motivo;
  String get motivo => _motivo ?? '';
  set motivo(String? val) => _motivo = val;

  bool hasMotivo() => _motivo != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;

  void incrementQuantidade(int amount) => quantidade = quantidade + amount;

  bool hasQuantidade() => _quantidade != null;

  static TataisMotivosStruct fromMap(Map<String, dynamic> data) =>
      TataisMotivosStruct(
        motivo: data['motivo'] as String?,
        quantidade: castToType<int>(data['quantidade']),
      );

  static TataisMotivosStruct? maybeFromMap(dynamic data) => data is Map
      ? TataisMotivosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'motivo': _motivo,
        'quantidade': _quantidade,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'motivo': serializeParam(
          _motivo,
          ParamType.String,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
      }.withoutNulls;

  static TataisMotivosStruct fromSerializableMap(Map<String, dynamic> data) =>
      TataisMotivosStruct(
        motivo: deserializeParam(
          data['motivo'],
          ParamType.String,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TataisMotivosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TataisMotivosStruct &&
        motivo == other.motivo &&
        quantidade == other.quantidade;
  }

  @override
  int get hashCode => const ListEquality().hash([motivo, quantidade]);
}

TataisMotivosStruct createTataisMotivosStruct({
  String? motivo,
  int? quantidade,
}) =>
    TataisMotivosStruct(
      motivo: motivo,
      quantidade: quantidade,
    );
