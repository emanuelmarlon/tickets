import '../database.dart';

class ComentariosTicketsLogisticaTable
    extends SupabaseTable<ComentariosTicketsLogisticaRow> {
  @override
  String get tableName => 'comentariosTicketsLogistica';

  @override
  ComentariosTicketsLogisticaRow createRow(Map<String, dynamic> data) =>
      ComentariosTicketsLogisticaRow(data);
}

class ComentariosTicketsLogisticaRow extends SupabaseDataRow {
  ComentariosTicketsLogisticaRow(super.data);

  @override
  SupabaseTable get table => ComentariosTicketsLogisticaTable();

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

  bool? get publico => getField<bool>('publico');
  set publico(bool? value) => setField<bool>('publico', value);
}
