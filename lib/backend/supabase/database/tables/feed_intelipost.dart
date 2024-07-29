import '../database.dart';

class FeedIntelipostTable extends SupabaseTable<FeedIntelipostRow> {
  @override
  String get tableName => 'feed_Intelipost';

  @override
  FeedIntelipostRow createRow(Map<String, dynamic> data) =>
      FeedIntelipostRow(data);
}

class FeedIntelipostRow extends SupabaseDataRow {
  FeedIntelipostRow(super.data);

  @override
  SupabaseTable get table => FeedIntelipostTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get pedido => getField<String>('pedido');
  set pedido(String? value) => setField<String>('pedido', value);

  double? get custoFrete => getField<double>('custo_frete');
  set custoFrete(double? value) => setField<double>('custo_frete', value);

  double? get criacao => getField<double>('criacao');
  set criacao(double? value) => setField<double>('criacao', value);

  DateTime? get criacaoIso => getField<DateTime>('criacao_iso');
  set criacaoIso(DateTime? value) => setField<DateTime>('criacao_iso', value);

  double? get atualizado => getField<double>('atualizado');
  set atualizado(double? value) => setField<double>('atualizado', value);

  DateTime? get atualizadoIso => getField<DateTime>('atualizado_iso');
  set atualizadoIso(DateTime? value) =>
      setField<DateTime>('atualizado_iso', value);

  double? get estimadosDiasEntregaLp =>
      getField<double>('estimados_dias_entrega_lp');
  set estimadosDiasEntregaLp(double? value) =>
      setField<double>('estimados_dias_entrega_lp', value);

  double? get estimadosDiasEntregaData =>
      getField<double>('estimados_dias_entrega_data');
  set estimadosDiasEntregaData(double? value) =>
      setField<double>('estimados_dias_entrega_data', value);

  DateTime? get estimadosDiasEntregaIso =>
      getField<DateTime>('estimados_dias_entrega_iso');
  set estimadosDiasEntregaIso(DateTime? value) =>
      setField<DateTime>('estimados_dias_entrega_iso', value);

  double? get entregaData => getField<double>('entrega_data');
  set entregaData(double? value) => setField<double>('entrega_data', value);

  DateTime? get entregaDataIso => getField<DateTime>('entrega_data_iso');
  set entregaDataIso(DateTime? value) =>
      setField<DateTime>('entrega_data_iso', value);

  String? get nfeNumero => getField<String>('nfe_numero');
  set nfeNumero(String? value) => setField<String>('nfe_numero', value);

  String? get nfeChave => getField<String>('nfe_chave');
  set nfeChave(String? value) => setField<String>('nfe_chave', value);

  double? get nfeTotalValor => getField<double>('nfe_total_valor');
  set nfeTotalValor(double? value) =>
      setField<double>('nfe_total_valor', value);

  double? get nfeProdutosValor => getField<double>('nfe_produtos_valor');
  set nfeProdutosValor(double? value) =>
      setField<double>('nfe_produtos_valor', value);

  double? get nfeData => getField<double>('nfe_data');
  set nfeData(double? value) => setField<double>('nfe_data', value);

  DateTime? get nfeDataIso => getField<DateTime>('nfe_data_iso');
  set nfeDataIso(DateTime? value) => setField<DateTime>('nfe_data_iso', value);

  String? get statusAtual => getField<String>('status_atual');
  set statusAtual(String? value) => setField<String>('status_atual', value);

  String? get rastreio => getField<String>('Rastreio');
  set rastreio(String? value) => setField<String>('Rastreio', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get sobrenome => getField<String>('sobrenome');
  set sobrenome(String? value) => setField<String>('sobrenome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get enderecoNumero => getField<String>('endereco_numero');
  set enderecoNumero(String? value) =>
      setField<String>('endereco_numero', value);

  String? get enderecoBairro => getField<String>('endereco_bairro');
  set enderecoBairro(String? value) =>
      setField<String>('endereco_bairro', value);

  String? get enderecoCidade => getField<String>('endereco_cidade');
  set enderecoCidade(String? value) =>
      setField<String>('endereco_cidade', value);

  String? get enderecoEstado => getField<String>('endereco_estado');
  set enderecoEstado(String? value) =>
      setField<String>('endereco_estado', value);

  String? get enderecoComplemento => getField<String>('endereco_complemento');
  set enderecoComplemento(String? value) =>
      setField<String>('endereco_complemento', value);
}
