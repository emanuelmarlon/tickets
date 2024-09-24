import '../database.dart';

class PedidosExataTable extends SupabaseTable<PedidosExataRow> {
  @override
  String get tableName => 'pedidos_exata';

  @override
  PedidosExataRow createRow(Map<String, dynamic> data) => PedidosExataRow(data);
}

class PedidosExataRow extends SupabaseDataRow {
  PedidosExataRow(super.data);

  @override
  SupabaseTable get table => PedidosExataTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get idMercos => getField<String>('idMercos');
  set idMercos(String? value) => setField<String>('idMercos', value);

  String? get numeroMercos => getField<String>('numeroMercos');
  set numeroMercos(String? value) => setField<String>('numeroMercos', value);

  String? get idBling => getField<String>('idBling');
  set idBling(String? value) => setField<String>('idBling', value);

  String? get numeroBling => getField<String>('numeroBling');
  set numeroBling(String? value) => setField<String>('numeroBling', value);

  String? get idClienteBling => getField<String>('idCliente_bling');
  set idClienteBling(String? value) =>
      setField<String>('idCliente_bling', value);

  String? get cnpj => getField<String>('cnpj');
  set cnpj(String? value) => setField<String>('cnpj', value);

  String? get razaoSocial => getField<String>('razao_social');
  set razaoSocial(String? value) => setField<String>('razao_social', value);

  String? get fantasia => getField<String>('fantasia');
  set fantasia(String? value) => setField<String>('fantasia', value);

  String? get vendedor => getField<String>('vendedor');
  set vendedor(String? value) => setField<String>('vendedor', value);

  bool? get bonificacao => getField<bool>('bonificacao');
  set bonificacao(bool? value) => setField<bool>('bonificacao', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get dataNota => getField<DateTime>('dataNota');
  set dataNota(DateTime? value) => setField<DateTime>('dataNota', value);

  DateTime? get dataColeta => getField<DateTime>('dataColeta');
  set dataColeta(DateTime? value) => setField<DateTime>('dataColeta', value);

  DateTime? get previsaoEntrega => getField<DateTime>('previsaoEntrega');
  set previsaoEntrega(DateTime? value) =>
      setField<DateTime>('previsaoEntrega', value);

  String? get transportadora => getField<String>('transportadora');
  set transportadora(String? value) =>
      setField<String>('transportadora', value);

  String? get volume => getField<String>('volume');
  set volume(String? value) => setField<String>('volume', value);

  String? get numeroNota => getField<String>('numeroNota');
  set numeroNota(String? value) => setField<String>('numeroNota', value);

  String? get chaveNota => getField<String>('chaveNota');
  set chaveNota(String? value) => setField<String>('chaveNota', value);

  String? get xml => getField<String>('xml');
  set xml(String? value) => setField<String>('xml', value);

  String? get danfe => getField<String>('danfe');
  set danfe(String? value) => setField<String>('danfe', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get rua => getField<String>('rua');
  set rua(String? value) => setField<String>('rua', value);

  String? get numeroEndereco => getField<String>('numeroEndereco');
  set numeroEndereco(String? value) =>
      setField<String>('numeroEndereco', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get condicaoPagamento => getField<String>('condicao_pagamento');
  set condicaoPagamento(String? value) =>
      setField<String>('condicao_pagamento', value);

  String? get idStatusMercos => getField<String>('idStatusMercos');
  set idStatusMercos(String? value) =>
      setField<String>('idStatusMercos', value);

  String? get situacaoNota => getField<String>('situacaoNota');
  set situacaoNota(String? value) => setField<String>('situacaoNota', value);

  String? get idNota => getField<String>('idNota');
  set idNota(String? value) => setField<String>('idNota', value);

  double? get valorFrete => getField<double>('valorFrete');
  set valorFrete(double? value) => setField<double>('valorFrete', value);

  String? get statusNota => getField<String>('statusNota');
  set statusNota(String? value) => setField<String>('statusNota', value);

  String? get bipadoPor => getField<String>('bipadoPor');
  set bipadoPor(String? value) => setField<String>('bipadoPor', value);

  String? get dataInIcio => getField<String>('dataInIcio');
  set dataInIcio(String? value) => setField<String>('dataInIcio', value);

  String? get dataTermino => getField<String>('dataTermino');
  set dataTermino(String? value) => setField<String>('dataTermino', value);

  String? get tempoSeparacao => getField<String>('tempoSeparação');
  set tempoSeparacao(String? value) =>
      setField<String>('tempoSeparação', value);

  String? get horaInicio => getField<String>('horaInicio');
  set horaInicio(String? value) => setField<String>('horaInicio', value);

  String? get horaTermino => getField<String>('horaTermino');
  set horaTermino(String? value) => setField<String>('horaTermino', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  String? get motivoPendente => getField<String>('motivoPendente');
  set motivoPendente(String? value) =>
      setField<String>('motivoPendente', value);

  String? get motivoPendenteObservacao =>
      getField<String>('motivoPendenteObservação');
  set motivoPendenteObservacao(String? value) =>
      setField<String>('motivoPendenteObservação', value);

  DateTime? get dtaEntrega => getField<DateTime>('dtaEntrega');
  set dtaEntrega(DateTime? value) => setField<DateTime>('dtaEntrega', value);

  String? get entregueObs => getField<String>('entregueObs');
  set entregueObs(String? value) => setField<String>('entregueObs', value);

  int? get idVendedor => getField<int>('idVendedor');
  set idVendedor(int? value) => setField<int>('idVendedor', value);

  bool? get bloqueado => getField<bool>('bloqueado');
  set bloqueado(bool? value) => setField<bool>('bloqueado', value);

  String? get bloquadoObs => getField<String>('bloquadoObs');
  set bloquadoObs(String? value) => setField<String>('bloquadoObs', value);
}
