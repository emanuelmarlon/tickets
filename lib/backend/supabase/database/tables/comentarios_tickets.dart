import '../database.dart';

class ComentariosTicketsTable extends SupabaseTable<ComentariosTicketsRow> {
  @override
  String get tableName => 'comentariosTickets';

  @override
  ComentariosTicketsRow createRow(Map<String, dynamic> data) =>
      ComentariosTicketsRow(data);
}

class ComentariosTicketsRow extends SupabaseDataRow {
  ComentariosTicketsRow(super.data);

  @override
  SupabaseTable get table => ComentariosTicketsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get responsavel => getField<int>('responsavel');
  set responsavel(int? value) => setField<int>('responsavel', value);

  String? get conteudo => getField<String>('conteudo');
  set conteudo(String? value) => setField<String>('conteudo', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get ticketRef => getField<int>('ticket_ref');
  set ticketRef(int? value) => setField<int>('ticket_ref', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get dataConclusao => getField<DateTime>('dataConclusao');
  set dataConclusao(DateTime? value) =>
      setField<DateTime>('dataConclusao', value);

  DateTime? get previsaoConclusao => getField<DateTime>('previsaoConclusao');
  set previsaoConclusao(DateTime? value) =>
      setField<DateTime>('previsaoConclusao', value);

  int? get ticketId => getField<int>('ticketId');
  set ticketId(int? value) => setField<int>('ticketId', value);

  bool? get publico => getField<bool>('publico');
  set publico(bool? value) => setField<bool>('publico', value);

  double? get ticketIdSite => getField<double>('ticketIdSite');
  set ticketIdSite(double? value) => setField<double>('ticketIdSite', value);
}
