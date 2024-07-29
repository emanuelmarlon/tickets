import '../database.dart';

class AtividadesComUsuarioTable extends SupabaseTable<AtividadesComUsuarioRow> {
  @override
  String get tableName => 'atividades_com_usuario';

  @override
  AtividadesComUsuarioRow createRow(Map<String, dynamic> data) =>
      AtividadesComUsuarioRow(data);
}

class AtividadesComUsuarioRow extends SupabaseDataRow {
  AtividadesComUsuarioRow(super.data);

  @override
  SupabaseTable get table => AtividadesComUsuarioTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get userId => getField<int>('userId');
  set userId(int? value) => setField<int>('userId', value);

  String? get nomeUsuario => getField<String>('nome_usuario');
  set nomeUsuario(String? value) => setField<String>('nome_usuario', value);

  int? get ticketId => getField<int>('ticketId');
  set ticketId(int? value) => setField<int>('ticketId', value);

  String? get tipoAtividade => getField<String>('tipoAtividade');
  set tipoAtividade(String? value) => setField<String>('tipoAtividade', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);

  int? get atividadeCriada => getField<int>('atividadeCriada');
  set atividadeCriada(int? value) => setField<int>('atividadeCriada', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
