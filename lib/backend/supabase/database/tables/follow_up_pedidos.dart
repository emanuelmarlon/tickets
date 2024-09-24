import '../database.dart';

class FollowUpPedidosTable extends SupabaseTable<FollowUpPedidosRow> {
  @override
  String get tableName => 'followUpPedidos';

  @override
  FollowUpPedidosRow createRow(Map<String, dynamic> data) =>
      FollowUpPedidosRow(data);
}

class FollowUpPedidosRow extends SupabaseDataRow {
  FollowUpPedidosRow(super.data);

  @override
  SupabaseTable get table => FollowUpPedidosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get alias => getField<String>('alias');
  set alias(String? value) => setField<String>('alias', value);

  bool? get entregue => getField<bool>('entregue');
  set entregue(bool? value) => setField<bool>('entregue', value);

  double? get numero => getField<double>('numero');
  set numero(double? value) => setField<double>('numero', value);

  double? get valorTotal => getField<double>('valor_total');
  set valorTotal(double? value) => setField<double>('valor_total', value);

  double? get valorProdutos => getField<double>('valor_produtos');
  set valorProdutos(double? value) => setField<double>('valor_produtos', value);

  double? get valorFrete => getField<double>('valor_frete');
  set valorFrete(double? value) => setField<double>('valor_frete', value);

  double? get desconto => getField<double>('desconto');
  set desconto(double? value) => setField<double>('desconto', value);

  String? get transportadora => getField<String>('transportadora');
  set transportadora(String? value) =>
      setField<String>('transportadora', value);

  String? get codigoRastreio => getField<String>('codigo_rastreio');
  set codigoRastreio(String? value) =>
      setField<String>('codigo_rastreio', value);

  String? get urlRastreio => getField<String>('urlRastreio');
  set urlRastreio(String? value) => setField<String>('urlRastreio', value);

  String? get utmSource => getField<String>('utm_source');
  set utmSource(String? value) => setField<String>('utm_source', value);

  String? get utmCampaign => getField<String>('utm_campaign');
  set utmCampaign(String? value) => setField<String>('utm_campaign', value);

  String? get utmContent => getField<String>('utm_content');
  set utmContent(String? value) => setField<String>('utm_content', value);

  String? get utmTerm => getField<String>('utm_term');
  set utmTerm(String? value) => setField<String>('utm_term', value);

  String? get utmMedium => getField<String>('utm_medium');
  set utmMedium(String? value) => setField<String>('utm_medium', value);

  String? get ipCompra => getField<String>('ip_compra');
  set ipCompra(String? value) => setField<String>('ip_compra', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  DateTime? get nascimento => getField<DateTime>('nascimento');
  set nascimento(DateTime? value) => setField<DateTime>('nascimento', value);

  DateTime? get atualizado => getField<DateTime>('atualizado');
  set atualizado(DateTime? value) => setField<DateTime>('atualizado', value);

  dynamic get itens => getField<dynamic>('itens');
  set itens(dynamic value) => setField<dynamic>('itens', value);

  String? get formaPagamento => getField<String>('forma_pagamento');
  set formaPagamento(String? value) =>
      setField<String>('forma_pagamento', value);

  String? get idPagamento => getField<String>('id_pagamento');
  set idPagamento(String? value) => setField<String>('id_pagamento', value);

  bool? get msgAprovado => getField<bool>('msg_aprovado');
  set msgAprovado(bool? value) => setField<bool>('msg_aprovado', value);

  bool? get msgRastreio => getField<bool>('msg_rastreio');
  set msgRastreio(bool? value) => setField<bool>('msg_rastreio', value);

  bool? get msgEntregue => getField<bool>('msg_entregue');
  set msgEntregue(bool? value) => setField<bool>('msg_entregue', value);
}
