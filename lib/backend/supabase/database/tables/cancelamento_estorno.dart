import '../database.dart';

class CancelamentoEstornoTable extends SupabaseTable<CancelamentoEstornoRow> {
  @override
  String get tableName => 'cancelamento-estorno';

  @override
  CancelamentoEstornoRow createRow(Map<String, dynamic> data) =>
      CancelamentoEstornoRow(data);
}

class CancelamentoEstornoRow extends SupabaseDataRow {
  CancelamentoEstornoRow(super.data);

  @override
  SupabaseTable get table => CancelamentoEstornoTable();

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

  String? get motivo => getField<String>('motivo');
  set motivo(String? value) => setField<String>('motivo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get numeroPedido => getField<String>('numeroPedido');
  set numeroPedido(String? value) => setField<String>('numeroPedido', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get idPedido => getField<String>('idPedido');
  set idPedido(String? value) => setField<String>('idPedido', value);

  String? get gatewayTransactionId =>
      getField<String>('gateway_transaction_id');
  set gatewayTransactionId(String? value) =>
      setField<String>('gateway_transaction_id', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  int? get user => getField<int>('user');
  set user(int? value) => setField<int>('user', value);

  int? get pedidoyampi => getField<int>('pedidoyampi');
  set pedidoyampi(int? value) => setField<int>('pedidoyampi', value);

  String? get protocolo => getField<String>('protocolo');
  set protocolo(String? value) => setField<String>('protocolo', value);
}
