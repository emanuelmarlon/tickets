import '../database.dart';

class PedidosYampiV2Table extends SupabaseTable<PedidosYampiV2Row> {
  @override
  String get tableName => 'pedidosYampiV2';

  @override
  PedidosYampiV2Row createRow(Map<String, dynamic> data) =>
      PedidosYampiV2Row(data);
}

class PedidosYampiV2Row extends SupabaseDataRow {
  PedidosYampiV2Row(super.data);

  @override
  SupabaseTable get table => PedidosYampiV2Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get idYampi => getField<double>('idYampi');
  set idYampi(double? value) => setField<double>('idYampi', value);

  double? get numeroPedido => getField<double>('numeroPedido');
  set numeroPedido(double? value) => setField<double>('numeroPedido', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  double? get frete => getField<double>('frete');
  set frete(double? value) => setField<double>('frete', value);

  double? get desconto => getField<double>('desconto');
  set desconto(double? value) => setField<double>('desconto', value);

  String? get transportadora => getField<String>('transportadora');
  set transportadora(String? value) =>
      setField<String>('transportadora', value);

  String? get pagamento => getField<String>('pagamento');
  set pagamento(String? value) => setField<String>('pagamento', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  dynamic get endereco => getField<dynamic>('endereco');
  set endereco(dynamic value) => setField<dynamic>('endereco', value);

  String? get gatewayTransactionId =>
      getField<String>('gateway_transaction_id');
  set gatewayTransactionId(String? value) =>
      setField<String>('gateway_transaction_id', value);

  dynamic get itens => getField<dynamic>('itens');
  set itens(dynamic value) => setField<dynamic>('itens', value);

  DateTime? get dataAtualizacao => getField<DateTime>('data_atualizacao');
  set dataAtualizacao(DateTime? value) =>
      setField<DateTime>('data_atualizacao', value);

  int? get clienteId => getField<int>('cliente_id');
  set clienteId(int? value) => setField<int>('cliente_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get rastreio => getField<String>('rastreio');
  set rastreio(String? value) => setField<String>('rastreio', value);

  String? get urlRastreio => getField<String>('urlRastreio');
  set urlRastreio(String? value) => setField<String>('urlRastreio', value);

  String? get nfeNumero => getField<String>('nfeNumero');
  set nfeNumero(String? value) => setField<String>('nfeNumero', value);

  String? get nfeChave => getField<String>('nfeChave');
  set nfeChave(String? value) => setField<String>('nfeChave', value);

  String? get nfeDanfe => getField<String>('nfeDanfe');
  set nfeDanfe(String? value) => setField<String>('nfeDanfe', value);

  DateTime? get nfeData => getField<DateTime>('nfeData');
  set nfeData(DateTime? value) => setField<DateTime>('nfeData', value);

  String? get statusEntrega => getField<String>('statusEntrega');
  set statusEntrega(String? value) => setField<String>('statusEntrega', value);

  bool? get estorno => getField<bool>('estorno');
  set estorno(bool? value) => setField<bool>('estorno', value);

  int? get ticketId => getField<int>('ticketId');
  set ticketId(int? value) => setField<int>('ticketId', value);

  bool? get ticketVinculado => getField<bool>('ticketVinculado');
  set ticketVinculado(bool? value) => setField<bool>('ticketVinculado', value);

  bool? get estornado => getField<bool>('estornado');
  set estornado(bool? value) => setField<bool>('estornado', value);
}
