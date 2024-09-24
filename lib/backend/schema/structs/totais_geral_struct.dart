// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TotaisGeralStruct extends BaseStruct {
  TotaisGeralStruct({
    int? totalSuportetAberto,
    int? totalSuportetEmAndamento,
    int? totalSuportetPendente,
    int? totalSuportetConcluido,
    int? totalSuportelogisticaAberto,
    int? totalSuportelogisticaEmAndamento,
    int? totalSuportelogisticaPendente,
    int? totalSuportelogisticaConcluido,
    int? totalAtividadesAberto,
    int? totalAtividadesEmAndamento,
    int? totalAtividadesPendente,
    int? totalAtividadesConcluido,
    int? totalSuportetAbertoCancelamentoTrue,
    int? totalAtividadesAbertoUserid,
  })  : _totalSuportetAberto = totalSuportetAberto,
        _totalSuportetEmAndamento = totalSuportetEmAndamento,
        _totalSuportetPendente = totalSuportetPendente,
        _totalSuportetConcluido = totalSuportetConcluido,
        _totalSuportelogisticaAberto = totalSuportelogisticaAberto,
        _totalSuportelogisticaEmAndamento = totalSuportelogisticaEmAndamento,
        _totalSuportelogisticaPendente = totalSuportelogisticaPendente,
        _totalSuportelogisticaConcluido = totalSuportelogisticaConcluido,
        _totalAtividadesAberto = totalAtividadesAberto,
        _totalAtividadesEmAndamento = totalAtividadesEmAndamento,
        _totalAtividadesPendente = totalAtividadesPendente,
        _totalAtividadesConcluido = totalAtividadesConcluido,
        _totalSuportetAbertoCancelamentoTrue =
            totalSuportetAbertoCancelamentoTrue,
        _totalAtividadesAbertoUserid = totalAtividadesAbertoUserid;

  // "total_suportet_aberto" field.
  int? _totalSuportetAberto;
  int get totalSuportetAberto => _totalSuportetAberto ?? 0;
  set totalSuportetAberto(int? val) => _totalSuportetAberto = val;

  void incrementTotalSuportetAberto(int amount) =>
      totalSuportetAberto = totalSuportetAberto + amount;

  bool hasTotalSuportetAberto() => _totalSuportetAberto != null;

  // "total_suportet_em_andamento" field.
  int? _totalSuportetEmAndamento;
  int get totalSuportetEmAndamento => _totalSuportetEmAndamento ?? 0;
  set totalSuportetEmAndamento(int? val) => _totalSuportetEmAndamento = val;

  void incrementTotalSuportetEmAndamento(int amount) =>
      totalSuportetEmAndamento = totalSuportetEmAndamento + amount;

  bool hasTotalSuportetEmAndamento() => _totalSuportetEmAndamento != null;

  // "total_suportet_pendente" field.
  int? _totalSuportetPendente;
  int get totalSuportetPendente => _totalSuportetPendente ?? 0;
  set totalSuportetPendente(int? val) => _totalSuportetPendente = val;

  void incrementTotalSuportetPendente(int amount) =>
      totalSuportetPendente = totalSuportetPendente + amount;

  bool hasTotalSuportetPendente() => _totalSuportetPendente != null;

  // "total_suportet_concluido" field.
  int? _totalSuportetConcluido;
  int get totalSuportetConcluido => _totalSuportetConcluido ?? 0;
  set totalSuportetConcluido(int? val) => _totalSuportetConcluido = val;

  void incrementTotalSuportetConcluido(int amount) =>
      totalSuportetConcluido = totalSuportetConcluido + amount;

  bool hasTotalSuportetConcluido() => _totalSuportetConcluido != null;

  // "total_suportelogistica_aberto" field.
  int? _totalSuportelogisticaAberto;
  int get totalSuportelogisticaAberto => _totalSuportelogisticaAberto ?? 0;
  set totalSuportelogisticaAberto(int? val) =>
      _totalSuportelogisticaAberto = val;

  void incrementTotalSuportelogisticaAberto(int amount) =>
      totalSuportelogisticaAberto = totalSuportelogisticaAberto + amount;

  bool hasTotalSuportelogisticaAberto() => _totalSuportelogisticaAberto != null;

  // "total_suportelogistica_em_andamento" field.
  int? _totalSuportelogisticaEmAndamento;
  int get totalSuportelogisticaEmAndamento =>
      _totalSuportelogisticaEmAndamento ?? 0;
  set totalSuportelogisticaEmAndamento(int? val) =>
      _totalSuportelogisticaEmAndamento = val;

  void incrementTotalSuportelogisticaEmAndamento(int amount) =>
      totalSuportelogisticaEmAndamento =
          totalSuportelogisticaEmAndamento + amount;

  bool hasTotalSuportelogisticaEmAndamento() =>
      _totalSuportelogisticaEmAndamento != null;

  // "total_suportelogistica_pendente" field.
  int? _totalSuportelogisticaPendente;
  int get totalSuportelogisticaPendente => _totalSuportelogisticaPendente ?? 0;
  set totalSuportelogisticaPendente(int? val) =>
      _totalSuportelogisticaPendente = val;

  void incrementTotalSuportelogisticaPendente(int amount) =>
      totalSuportelogisticaPendente = totalSuportelogisticaPendente + amount;

  bool hasTotalSuportelogisticaPendente() =>
      _totalSuportelogisticaPendente != null;

  // "total_suportelogistica_concluido" field.
  int? _totalSuportelogisticaConcluido;
  int get totalSuportelogisticaConcluido =>
      _totalSuportelogisticaConcluido ?? 0;
  set totalSuportelogisticaConcluido(int? val) =>
      _totalSuportelogisticaConcluido = val;

  void incrementTotalSuportelogisticaConcluido(int amount) =>
      totalSuportelogisticaConcluido = totalSuportelogisticaConcluido + amount;

  bool hasTotalSuportelogisticaConcluido() =>
      _totalSuportelogisticaConcluido != null;

  // "total_atividades_aberto" field.
  int? _totalAtividadesAberto;
  int get totalAtividadesAberto => _totalAtividadesAberto ?? 0;
  set totalAtividadesAberto(int? val) => _totalAtividadesAberto = val;

  void incrementTotalAtividadesAberto(int amount) =>
      totalAtividadesAberto = totalAtividadesAberto + amount;

  bool hasTotalAtividadesAberto() => _totalAtividadesAberto != null;

  // "total_atividades_em_andamento" field.
  int? _totalAtividadesEmAndamento;
  int get totalAtividadesEmAndamento => _totalAtividadesEmAndamento ?? 0;
  set totalAtividadesEmAndamento(int? val) => _totalAtividadesEmAndamento = val;

  void incrementTotalAtividadesEmAndamento(int amount) =>
      totalAtividadesEmAndamento = totalAtividadesEmAndamento + amount;

  bool hasTotalAtividadesEmAndamento() => _totalAtividadesEmAndamento != null;

  // "total_atividades_pendente" field.
  int? _totalAtividadesPendente;
  int get totalAtividadesPendente => _totalAtividadesPendente ?? 0;
  set totalAtividadesPendente(int? val) => _totalAtividadesPendente = val;

  void incrementTotalAtividadesPendente(int amount) =>
      totalAtividadesPendente = totalAtividadesPendente + amount;

  bool hasTotalAtividadesPendente() => _totalAtividadesPendente != null;

  // "total_atividades_concluido" field.
  int? _totalAtividadesConcluido;
  int get totalAtividadesConcluido => _totalAtividadesConcluido ?? 0;
  set totalAtividadesConcluido(int? val) => _totalAtividadesConcluido = val;

  void incrementTotalAtividadesConcluido(int amount) =>
      totalAtividadesConcluido = totalAtividadesConcluido + amount;

  bool hasTotalAtividadesConcluido() => _totalAtividadesConcluido != null;

  // "total_suportet_aberto_cancelamento_true" field.
  int? _totalSuportetAbertoCancelamentoTrue;
  int get totalSuportetAbertoCancelamentoTrue =>
      _totalSuportetAbertoCancelamentoTrue ?? 0;
  set totalSuportetAbertoCancelamentoTrue(int? val) =>
      _totalSuportetAbertoCancelamentoTrue = val;

  void incrementTotalSuportetAbertoCancelamentoTrue(int amount) =>
      totalSuportetAbertoCancelamentoTrue =
          totalSuportetAbertoCancelamentoTrue + amount;

  bool hasTotalSuportetAbertoCancelamentoTrue() =>
      _totalSuportetAbertoCancelamentoTrue != null;

  // "total_atividades_aberto_userid" field.
  int? _totalAtividadesAbertoUserid;
  int get totalAtividadesAbertoUserid => _totalAtividadesAbertoUserid ?? 0;
  set totalAtividadesAbertoUserid(int? val) =>
      _totalAtividadesAbertoUserid = val;

  void incrementTotalAtividadesAbertoUserid(int amount) =>
      totalAtividadesAbertoUserid = totalAtividadesAbertoUserid + amount;

  bool hasTotalAtividadesAbertoUserid() => _totalAtividadesAbertoUserid != null;

  static TotaisGeralStruct fromMap(Map<String, dynamic> data) =>
      TotaisGeralStruct(
        totalSuportetAberto: castToType<int>(data['total_suportet_aberto']),
        totalSuportetEmAndamento:
            castToType<int>(data['total_suportet_em_andamento']),
        totalSuportetPendente: castToType<int>(data['total_suportet_pendente']),
        totalSuportetConcluido:
            castToType<int>(data['total_suportet_concluido']),
        totalSuportelogisticaAberto:
            castToType<int>(data['total_suportelogistica_aberto']),
        totalSuportelogisticaEmAndamento:
            castToType<int>(data['total_suportelogistica_em_andamento']),
        totalSuportelogisticaPendente:
            castToType<int>(data['total_suportelogistica_pendente']),
        totalSuportelogisticaConcluido:
            castToType<int>(data['total_suportelogistica_concluido']),
        totalAtividadesAberto: castToType<int>(data['total_atividades_aberto']),
        totalAtividadesEmAndamento:
            castToType<int>(data['total_atividades_em_andamento']),
        totalAtividadesPendente:
            castToType<int>(data['total_atividades_pendente']),
        totalAtividadesConcluido:
            castToType<int>(data['total_atividades_concluido']),
        totalSuportetAbertoCancelamentoTrue:
            castToType<int>(data['total_suportet_aberto_cancelamento_true']),
        totalAtividadesAbertoUserid:
            castToType<int>(data['total_atividades_aberto_userid']),
      );

  static TotaisGeralStruct? maybeFromMap(dynamic data) => data is Map
      ? TotaisGeralStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'total_suportet_aberto': _totalSuportetAberto,
        'total_suportet_em_andamento': _totalSuportetEmAndamento,
        'total_suportet_pendente': _totalSuportetPendente,
        'total_suportet_concluido': _totalSuportetConcluido,
        'total_suportelogistica_aberto': _totalSuportelogisticaAberto,
        'total_suportelogistica_em_andamento':
            _totalSuportelogisticaEmAndamento,
        'total_suportelogistica_pendente': _totalSuportelogisticaPendente,
        'total_suportelogistica_concluido': _totalSuportelogisticaConcluido,
        'total_atividades_aberto': _totalAtividadesAberto,
        'total_atividades_em_andamento': _totalAtividadesEmAndamento,
        'total_atividades_pendente': _totalAtividadesPendente,
        'total_atividades_concluido': _totalAtividadesConcluido,
        'total_suportet_aberto_cancelamento_true':
            _totalSuportetAbertoCancelamentoTrue,
        'total_atividades_aberto_userid': _totalAtividadesAbertoUserid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total_suportet_aberto': serializeParam(
          _totalSuportetAberto,
          ParamType.int,
        ),
        'total_suportet_em_andamento': serializeParam(
          _totalSuportetEmAndamento,
          ParamType.int,
        ),
        'total_suportet_pendente': serializeParam(
          _totalSuportetPendente,
          ParamType.int,
        ),
        'total_suportet_concluido': serializeParam(
          _totalSuportetConcluido,
          ParamType.int,
        ),
        'total_suportelogistica_aberto': serializeParam(
          _totalSuportelogisticaAberto,
          ParamType.int,
        ),
        'total_suportelogistica_em_andamento': serializeParam(
          _totalSuportelogisticaEmAndamento,
          ParamType.int,
        ),
        'total_suportelogistica_pendente': serializeParam(
          _totalSuportelogisticaPendente,
          ParamType.int,
        ),
        'total_suportelogistica_concluido': serializeParam(
          _totalSuportelogisticaConcluido,
          ParamType.int,
        ),
        'total_atividades_aberto': serializeParam(
          _totalAtividadesAberto,
          ParamType.int,
        ),
        'total_atividades_em_andamento': serializeParam(
          _totalAtividadesEmAndamento,
          ParamType.int,
        ),
        'total_atividades_pendente': serializeParam(
          _totalAtividadesPendente,
          ParamType.int,
        ),
        'total_atividades_concluido': serializeParam(
          _totalAtividadesConcluido,
          ParamType.int,
        ),
        'total_suportet_aberto_cancelamento_true': serializeParam(
          _totalSuportetAbertoCancelamentoTrue,
          ParamType.int,
        ),
        'total_atividades_aberto_userid': serializeParam(
          _totalAtividadesAbertoUserid,
          ParamType.int,
        ),
      }.withoutNulls;

  static TotaisGeralStruct fromSerializableMap(Map<String, dynamic> data) =>
      TotaisGeralStruct(
        totalSuportetAberto: deserializeParam(
          data['total_suportet_aberto'],
          ParamType.int,
          false,
        ),
        totalSuportetEmAndamento: deserializeParam(
          data['total_suportet_em_andamento'],
          ParamType.int,
          false,
        ),
        totalSuportetPendente: deserializeParam(
          data['total_suportet_pendente'],
          ParamType.int,
          false,
        ),
        totalSuportetConcluido: deserializeParam(
          data['total_suportet_concluido'],
          ParamType.int,
          false,
        ),
        totalSuportelogisticaAberto: deserializeParam(
          data['total_suportelogistica_aberto'],
          ParamType.int,
          false,
        ),
        totalSuportelogisticaEmAndamento: deserializeParam(
          data['total_suportelogistica_em_andamento'],
          ParamType.int,
          false,
        ),
        totalSuportelogisticaPendente: deserializeParam(
          data['total_suportelogistica_pendente'],
          ParamType.int,
          false,
        ),
        totalSuportelogisticaConcluido: deserializeParam(
          data['total_suportelogistica_concluido'],
          ParamType.int,
          false,
        ),
        totalAtividadesAberto: deserializeParam(
          data['total_atividades_aberto'],
          ParamType.int,
          false,
        ),
        totalAtividadesEmAndamento: deserializeParam(
          data['total_atividades_em_andamento'],
          ParamType.int,
          false,
        ),
        totalAtividadesPendente: deserializeParam(
          data['total_atividades_pendente'],
          ParamType.int,
          false,
        ),
        totalAtividadesConcluido: deserializeParam(
          data['total_atividades_concluido'],
          ParamType.int,
          false,
        ),
        totalSuportetAbertoCancelamentoTrue: deserializeParam(
          data['total_suportet_aberto_cancelamento_true'],
          ParamType.int,
          false,
        ),
        totalAtividadesAbertoUserid: deserializeParam(
          data['total_atividades_aberto_userid'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TotaisGeralStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TotaisGeralStruct &&
        totalSuportetAberto == other.totalSuportetAberto &&
        totalSuportetEmAndamento == other.totalSuportetEmAndamento &&
        totalSuportetPendente == other.totalSuportetPendente &&
        totalSuportetConcluido == other.totalSuportetConcluido &&
        totalSuportelogisticaAberto == other.totalSuportelogisticaAberto &&
        totalSuportelogisticaEmAndamento ==
            other.totalSuportelogisticaEmAndamento &&
        totalSuportelogisticaPendente == other.totalSuportelogisticaPendente &&
        totalSuportelogisticaConcluido ==
            other.totalSuportelogisticaConcluido &&
        totalAtividadesAberto == other.totalAtividadesAberto &&
        totalAtividadesEmAndamento == other.totalAtividadesEmAndamento &&
        totalAtividadesPendente == other.totalAtividadesPendente &&
        totalAtividadesConcluido == other.totalAtividadesConcluido &&
        totalSuportetAbertoCancelamentoTrue ==
            other.totalSuportetAbertoCancelamentoTrue &&
        totalAtividadesAbertoUserid == other.totalAtividadesAbertoUserid;
  }

  @override
  int get hashCode => const ListEquality().hash([
        totalSuportetAberto,
        totalSuportetEmAndamento,
        totalSuportetPendente,
        totalSuportetConcluido,
        totalSuportelogisticaAberto,
        totalSuportelogisticaEmAndamento,
        totalSuportelogisticaPendente,
        totalSuportelogisticaConcluido,
        totalAtividadesAberto,
        totalAtividadesEmAndamento,
        totalAtividadesPendente,
        totalAtividadesConcluido,
        totalSuportetAbertoCancelamentoTrue,
        totalAtividadesAbertoUserid
      ]);
}

TotaisGeralStruct createTotaisGeralStruct({
  int? totalSuportetAberto,
  int? totalSuportetEmAndamento,
  int? totalSuportetPendente,
  int? totalSuportetConcluido,
  int? totalSuportelogisticaAberto,
  int? totalSuportelogisticaEmAndamento,
  int? totalSuportelogisticaPendente,
  int? totalSuportelogisticaConcluido,
  int? totalAtividadesAberto,
  int? totalAtividadesEmAndamento,
  int? totalAtividadesPendente,
  int? totalAtividadesConcluido,
  int? totalSuportetAbertoCancelamentoTrue,
  int? totalAtividadesAbertoUserid,
}) =>
    TotaisGeralStruct(
      totalSuportetAberto: totalSuportetAberto,
      totalSuportetEmAndamento: totalSuportetEmAndamento,
      totalSuportetPendente: totalSuportetPendente,
      totalSuportetConcluido: totalSuportetConcluido,
      totalSuportelogisticaAberto: totalSuportelogisticaAberto,
      totalSuportelogisticaEmAndamento: totalSuportelogisticaEmAndamento,
      totalSuportelogisticaPendente: totalSuportelogisticaPendente,
      totalSuportelogisticaConcluido: totalSuportelogisticaConcluido,
      totalAtividadesAberto: totalAtividadesAberto,
      totalAtividadesEmAndamento: totalAtividadesEmAndamento,
      totalAtividadesPendente: totalAtividadesPendente,
      totalAtividadesConcluido: totalAtividadesConcluido,
      totalSuportetAbertoCancelamentoTrue: totalSuportetAbertoCancelamentoTrue,
      totalAtividadesAbertoUserid: totalAtividadesAbertoUserid,
    );
