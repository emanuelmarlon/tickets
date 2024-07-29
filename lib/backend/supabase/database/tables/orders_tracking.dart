import '../database.dart';

class OrdersTrackingTable extends SupabaseTable<OrdersTrackingRow> {
  @override
  String get tableName => 'orders_tracking';

  @override
  OrdersTrackingRow createRow(Map<String, dynamic> data) =>
      OrdersTrackingRow(data);
}

class OrdersTrackingRow extends SupabaseDataRow {
  OrdersTrackingRow(super.data);

  @override
  SupabaseTable get table => OrdersTrackingTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get trackingUrl => getField<String>('tracking_url');
  set trackingUrl(String? value) => setField<String>('tracking_url', value);

  int? get daysLp => getField<int>('days_lp');
  set daysLp(int? value) => setField<int>('days_lp', value);

  String? get logisticProviderName =>
      getField<String>('logistic_provider_name');
  set logisticProviderName(String? value) =>
      setField<String>('logistic_provider_name', value);

  double? get shippingCost => getField<double>('shipping_cost');
  set shippingCost(double? value) => setField<double>('shipping_cost', value);

  DateTime? get estimatedDeliveryDateIso =>
      getField<DateTime>('estimated_delivery_date_iso');
  set estimatedDeliveryDateIso(DateTime? value) =>
      setField<DateTime>('estimated_delivery_date_iso', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get trackingCode => getField<String>('tracking_code');
  set trackingCode(String? value) => setField<String>('tracking_code', value);

  String? get invoiceNumber => getField<String>('invoice_number');
  set invoiceNumber(String? value) => setField<String>('invoice_number', value);

  String? get invoiceKey => getField<String>('invoice_key');
  set invoiceKey(String? value) => setField<String>('invoice_key', value);

  double? get productValue => getField<double>('product_value');
  set productValue(double? value) => setField<double>('product_value', value);

  double? get totalValue => getField<double>('total_value');
  set totalValue(double? value) => setField<double>('total_value', value);

  DateTime? get invoiceDate => getField<DateTime>('invoice_date');
  set invoiceDate(DateTime? value) => setField<DateTime>('invoice_date', value);

  String? get macroState => getField<String>('macro_state');
  set macroState(String? value) => setField<String>('macro_state', value);

  String? get descricaoTracking => getField<String>('descricao_tracking');
  set descricaoTracking(String? value) =>
      setField<String>('descricao_tracking', value);

  String? get motivoTrihair => getField<String>('motivo_trihair');
  set motivoTrihair(String? value) => setField<String>('motivo_trihair', value);

  String? get tratativaJt => getField<String>('tratativa_jt');
  set tratativaJt(String? value) => setField<String>('tratativa_jt', value);

  String? get ultimaAtualizacaoJt => getField<String>('ultima_atualizacao_jt');
  set ultimaAtualizacaoJt(String? value) =>
      setField<String>('ultima_atualizacao_jt', value);

  String? get dataDaUltimaAtualizacao =>
      getField<String>('data_da_ultima_atualizacao');
  set dataDaUltimaAtualizacao(String? value) =>
      setField<String>('data_da_ultima_atualizacao', value);

  String? get informacoes => getField<String>('informacoes');
  set informacoes(String? value) => setField<String>('informacoes', value);

  int? get responsavel => getField<int>('responsavel');
  set responsavel(int? value) => setField<int>('responsavel', value);

  String? get motivo => getField<String>('motivo');
  set motivo(String? value) => setField<String>('motivo', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get idYampi => getField<String>('id_yampi');
  set idYampi(String? value) => setField<String>('id_yampi', value);
}
