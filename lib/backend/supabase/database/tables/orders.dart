import '../database.dart';

class OrdersTable extends SupabaseTable<OrdersRow> {
  @override
  String get tableName => 'orders';

  @override
  OrdersRow createRow(Map<String, dynamic> data) => OrdersRow(data);
}

class OrdersRow extends SupabaseDataRow {
  OrdersRow(super.data);

  @override
  SupabaseTable get table => OrdersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  PostgresTime? get createdAt => getField<PostgresTime>('created_at');
  set createdAt(PostgresTime? value) =>
      setField<PostgresTime>('created_at', value);

  int? get idyampi => getField<int>('idyampi');
  set idyampi(int? value) => setField<int>('idyampi', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  DateTime? get dataPagamento => getField<DateTime>('data_pagamento');
  set dataPagamento(DateTime? value) =>
      setField<DateTime>('data_pagamento', value);

  DateTime? get dataCancelamento => getField<DateTime>('data_cancelamento');
  set dataCancelamento(DateTime? value) =>
      setField<DateTime>('data_cancelamento', value);

  int? get numeroPedido => getField<int>('numero_pedido');
  set numeroPedido(int? value) => setField<int>('numero_pedido', value);

  String? get cliente => getField<String>('cliente');
  set cliente(String? value) => setField<String>('cliente', value);

  String? get clienteEmail => getField<String>('cliente_email');
  set clienteEmail(String? value) => setField<String>('cliente_email', value);

  int? get clienteTelefone => getField<int>('cliente_telefone');
  set clienteTelefone(int? value) => setField<int>('cliente_telefone', value);

  int? get clienteDocument => getField<int>('cliente_document');
  set clienteDocument(int? value) => setField<int>('cliente_document', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get pagamento => getField<String>('pagamento');
  set pagamento(String? value) => setField<String>('pagamento', value);

  String? get cartao => getField<String>('cartao');
  set cartao(String? value) => setField<String>('cartao', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  double? get totalProdutos => getField<double>('total_produtos');
  set totalProdutos(double? value) => setField<double>('total_produtos', value);

  String? get totalDesconto => getField<String>('total_desconto');
  set totalDesconto(String? value) => setField<String>('total_desconto', value);

  String? get totalCusto => getField<String>('total_custo');
  set totalCusto(String? value) => setField<String>('total_custo', value);

  String? get totalJuros => getField<String>('total_juros');
  set totalJuros(String? value) => setField<String>('total_juros', value);

  String? get totalFrete => getField<String>('total_frete');
  set totalFrete(String? value) => setField<String>('total_frete', value);

  double? get totalItem => getField<double>('total_item');
  set totalItem(double? value) => setField<double>('total_item', value);

  String? get cupom => getField<String>('cupom');
  set cupom(String? value) => setField<String>('cupom', value);

  String? get parcelado => getField<String>('parcelado');
  set parcelado(String? value) => setField<String>('parcelado', value);

  int? get parcelamento => getField<int>('parcelamento');
  set parcelamento(int? value) => setField<int>('parcelamento', value);

  String? get entrega => getField<String>('entrega');
  set entrega(String? value) => setField<String>('entrega', value);

  String? get entregue => getField<String>('entregue');
  set entregue(String? value) => setField<String>('entregue', value);

  int? get diasParaEntrega => getField<int>('dias_para_entrega');
  set diasParaEntrega(int? value) => setField<int>('dias_para_entrega', value);

  String? get dataDeEntrega => getField<String>('data_de_entrega');
  set dataDeEntrega(String? value) =>
      setField<String>('data_de_entrega', value);

  String? get entregaDestinatario => getField<String>('entrega_destinatario');
  set entregaDestinatario(String? value) =>
      setField<String>('entrega_destinatario', value);

  String? get entregaEndereco => getField<String>('entrega_endereco');
  set entregaEndereco(String? value) =>
      setField<String>('entrega_endereco', value);

  String? get entregaRua => getField<String>('entrega_rua');
  set entregaRua(String? value) => setField<String>('entrega_rua', value);

  String? get entregaNumero => getField<String>('entrega_numero');
  set entregaNumero(String? value) => setField<String>('entrega_numero', value);

  String? get entregaBairro => getField<String>('entrega_bairro');
  set entregaBairro(String? value) => setField<String>('entrega_bairro', value);

  String? get entregaComplemento => getField<String>('entrega_complemento');
  set entregaComplemento(String? value) =>
      setField<String>('entrega_complemento', value);

  String? get entregaCidade => getField<String>('entrega_cidade');
  set entregaCidade(String? value) => setField<String>('entrega_cidade', value);

  String? get entregaEstado => getField<String>('entrega_estado');
  set entregaEstado(String? value) => setField<String>('entrega_estado', value);

  String? get entregaCep => getField<String>('entrega_cep');
  set entregaCep(String? value) => setField<String>('entrega_cep', value);

  String? get codigoRastreamento => getField<String>('codigo_rastreamento');
  set codigoRastreamento(String? value) =>
      setField<String>('codigo_rastreamento', value);

  String? get urlRastreamento => getField<String>('url_rastreamento');
  set urlRastreamento(String? value) =>
      setField<String>('url_rastreamento', value);

  String? get utmSource => getField<String>('utm_source');
  set utmSource(String? value) => setField<String>('utm_source', value);

  String? get utmCampaign => getField<String>('utm_campaign');
  set utmCampaign(String? value) => setField<String>('utm_campaign', value);

  String? get utmMedium => getField<String>('utm_medium');
  set utmMedium(String? value) => setField<String>('utm_medium', value);

  String? get utmContent => getField<String>('utm_content');
  set utmContent(String? value) => setField<String>('utm_content', value);

  String? get utmTerm => getField<String>('utm_term');
  set utmTerm(String? value) => setField<String>('utm_term', value);

  String? get ip => getField<String>('ip');
  set ip(String? value) => setField<String>('ip', value);

  String? get customizacao => getField<String>('customizacao');
  set customizacao(String? value) => setField<String>('customizacao', value);

  int? get idTransacaoGateway => getField<int>('id_transacao_gateway');
  set idTransacaoGateway(int? value) =>
      setField<int>('id_transacao_gateway', value);

  String? get codBarrasBoleto => getField<String>('cod_barras_boleto');
  set codBarrasBoleto(String? value) =>
      setField<String>('cod_barras_boleto', value);
}
