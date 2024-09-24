import '../database.dart';

class AtividadesTable extends SupabaseTable<AtividadesRow> {
  @override
  String get tableName => 'atividades';

  @override
  AtividadesRow createRow(Map<String, dynamic> data) => AtividadesRow(data);
}

class AtividadesRow extends SupabaseDataRow {
  AtividadesRow(super.data);

  @override
  SupabaseTable get table => AtividadesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userId => getField<int>('userId');
  set userId(int? value) => setField<int>('userId', value);

  int? get ticketId => getField<int>('ticketId');
  set ticketId(int? value) => setField<int>('ticketId', value);

  String? get tipoAtividade => getField<String>('tipoAtividade');
  set tipoAtividade(String? value) => setField<String>('tipoAtividade', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get atividadeCriada => getField<int>('atividadeCriada');
  set atividadeCriada(int? value) => setField<int>('atividadeCriada', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  int? get clienteId => getField<int>('clienteId');
  set clienteId(int? value) => setField<int>('clienteId', value);

  bool? get exibir => getField<bool>('exibir');
  set exibir(bool? value) => setField<bool>('exibir', value);

  int? get ticketIdSite => getField<int>('ticketIdSite');
  set ticketIdSite(int? value) => setField<int>('ticketIdSite', value);
}
