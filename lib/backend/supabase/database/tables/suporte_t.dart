import '../database.dart';

class SuporteTTable extends SupabaseTable<SuporteTRow> {
  @override
  String get tableName => 'suporteT';

  @override
  SuporteTRow createRow(Map<String, dynamic> data) => SuporteTRow(data);
}

class SuporteTRow extends SupabaseDataRow {
  SuporteTRow(super.data);

  @override
  SupabaseTable get table => SuporteTTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get numeroPedido => getField<String>('numeroPedido');
  set numeroPedido(String? value) => setField<String>('numeroPedido', value);

  String? get tipoSolicitacao => getField<String>('tipoSolicitacao');
  set tipoSolicitacao(String? value) =>
      setField<String>('tipoSolicitacao', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get userNs => getField<String>('userNs');
  set userNs(String? value) => setField<String>('userNs', value);

  String? get resultadoAtendimento => getField<String>('resultadoAtendimento');
  set resultadoAtendimento(String? value) =>
      setField<String>('resultadoAtendimento', value);

  String? get resultadoAtendimentoDescricao =>
      getField<String>('resultadoAtendimentoDescricao');
  set resultadoAtendimentoDescricao(String? value) =>
      setField<String>('resultadoAtendimentoDescricao', value);

  DateTime? get resultadoAtendimentoData =>
      getField<DateTime>('resultadoAtendimentoData');
  set resultadoAtendimentoData(DateTime? value) =>
      setField<DateTime>('resultadoAtendimentoData', value);

  String? get resultadoAtendimentoMeioContato =>
      getField<String>('resultadoAtendimentoMeioContato');
  set resultadoAtendimentoMeioContato(String? value) =>
      setField<String>('resultadoAtendimentoMeioContato', value);

  String? get origem => getField<String>('origem');
  set origem(String? value) => setField<String>('origem', value);

  bool? get ticketVinculado => getField<bool>('ticketVinculado');
  set ticketVinculado(bool? value) => setField<bool>('ticketVinculado', value);

  int? get suportLogisticaId => getField<int>('suportLogisticaId');
  set suportLogisticaId(int? value) =>
      setField<int>('suportLogisticaId', value);

  String? get vinculadoPor => getField<String>('vinculadoPor');
  set vinculadoPor(String? value) => setField<String>('vinculadoPor', value);

  double? get nps => getField<double>('nps');
  set nps(double? value) => setField<double>('nps', value);

  String? get motivoPendente => getField<String>('motivoPendente');
  set motivoPendente(String? value) =>
      setField<String>('motivoPendente', value);

  String? get categoriaMotivo => getField<String>('categoriaMotivo');
  set categoriaMotivo(String? value) =>
      setField<String>('categoriaMotivo', value);

  bool? get cancelamento => getField<bool>('cancelamento');
  set cancelamento(bool? value) => setField<bool>('cancelamento', value);

  int? get pedidoId => getField<int>('pedidoId');
  set pedidoId(int? value) => setField<int>('pedidoId', value);
}
