// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TotaisTipoSolicitacaoStruct extends BaseStruct {
  TotaisTipoSolicitacaoStruct({
    String? tipoSolicitacao,
    int? quantidade,
  })  : _tipoSolicitacao = tipoSolicitacao,
        _quantidade = quantidade;

  // "tipo_solicitacao" field.
  String? _tipoSolicitacao;
  String get tipoSolicitacao => _tipoSolicitacao ?? '';
  set tipoSolicitacao(String? val) => _tipoSolicitacao = val;

  bool hasTipoSolicitacao() => _tipoSolicitacao != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;

  void incrementQuantidade(int amount) => quantidade = quantidade + amount;

  bool hasQuantidade() => _quantidade != null;

  static TotaisTipoSolicitacaoStruct fromMap(Map<String, dynamic> data) =>
      TotaisTipoSolicitacaoStruct(
        tipoSolicitacao: data['tipo_solicitacao'] as String?,
        quantidade: castToType<int>(data['quantidade']),
      );

  static TotaisTipoSolicitacaoStruct? maybeFromMap(dynamic data) => data is Map
      ? TotaisTipoSolicitacaoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'tipo_solicitacao': _tipoSolicitacao,
        'quantidade': _quantidade,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tipo_solicitacao': serializeParam(
          _tipoSolicitacao,
          ParamType.String,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
      }.withoutNulls;

  static TotaisTipoSolicitacaoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TotaisTipoSolicitacaoStruct(
        tipoSolicitacao: deserializeParam(
          data['tipo_solicitacao'],
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
  String toString() => 'TotaisTipoSolicitacaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TotaisTipoSolicitacaoStruct &&
        tipoSolicitacao == other.tipoSolicitacao &&
        quantidade == other.quantidade;
  }

  @override
  int get hashCode => const ListEquality().hash([tipoSolicitacao, quantidade]);
}

TotaisTipoSolicitacaoStruct createTotaisTipoSolicitacaoStruct({
  String? tipoSolicitacao,
  int? quantidade,
}) =>
    TotaisTipoSolicitacaoStruct(
      tipoSolicitacao: tipoSolicitacao,
      quantidade: quantidade,
    );
