import '../database.dart';

class SuporteLogisticaTable extends SupabaseTable<SuporteLogisticaRow> {
  @override
  String get tableName => 'suporteLogistica';

  @override
  SuporteLogisticaRow createRow(Map<String, dynamic> data) =>
      SuporteLogisticaRow(data);
}

class SuporteLogisticaRow extends SupabaseDataRow {
  SuporteLogisticaRow(super.data);

  @override
  SupabaseTable get table => SuporteLogisticaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get solicitante => getField<int>('solicitante');
  set solicitante(int? value) => setField<int>('solicitante', value);

  String? get nfeNumber => getField<String>('nfe_number');
  set nfeNumber(String? value) => setField<String>('nfe_number', value);

  String? get nfeChave => getField<String>('nfe_chave');
  set nfeChave(String? value) => setField<String>('nfe_chave', value);

  String? get rastreio => getField<String>('rastreio');
  set rastreio(String? value) => setField<String>('rastreio', value);

  DateTime? get dataColeta => getField<DateTime>('data_coleta');
  set dataColeta(DateTime? value) => setField<DateTime>('data_coleta', value);

  String? get destinarario => getField<String>('destinarario');
  set destinarario(String? value) => setField<String>('destinarario', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get ultimaAtualizacao => getField<DateTime>('ultima_atualizacao');
  set ultimaAtualizacao(DateTime? value) =>
      setField<DateTime>('ultima_atualizacao', value);

  DateTime? get dataConclusao => getField<DateTime>('data_conclusao');
  set dataConclusao(DateTime? value) =>
      setField<DateTime>('data_conclusao', value);

  String? get motivo => getField<String>('motivo');
  set motivo(String? value) => setField<String>('motivo', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  DateTime? get datafaturamento => getField<DateTime>('datafaturamento');
  set datafaturamento(DateTime? value) =>
      setField<DateTime>('datafaturamento', value);

  String? get trackingUrl => getField<String>('tracking_url');
  set trackingUrl(String? value) => setField<String>('tracking_url', value);

  int? get ticketId => getField<int>('ticketId');
  set ticketId(int? value) => setField<int>('ticketId', value);

  bool? get ticketVinculado => getField<bool>('ticketVinculado');
  set ticketVinculado(bool? value) => setField<bool>('ticketVinculado', value);

  String? get protocolo => getField<String>('protocolo');
  set protocolo(String? value) => setField<String>('protocolo', value);
}
