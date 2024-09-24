import '../database.dart';

class VNotificacoesDetalhadasTable
    extends SupabaseTable<VNotificacoesDetalhadasRow> {
  @override
  String get tableName => 'v_notificacoes_detalhadas';

  @override
  VNotificacoesDetalhadasRow createRow(Map<String, dynamic> data) =>
      VNotificacoesDetalhadasRow(data);
}

class VNotificacoesDetalhadasRow extends SupabaseDataRow {
  VNotificacoesDetalhadasRow(super.data);

  @override
  SupabaseTable get table => VNotificacoesDetalhadasTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get idTicket => getField<int>('idTicket');
  set idTicket(int? value) => setField<int>('idTicket', value);

  int? get idUsuario => getField<int>('idUsuario');
  set idUsuario(int? value) => setField<int>('idUsuario', value);

  String? get nomeUsuario => getField<String>('nome_usuario');
  set nomeUsuario(String? value) => setField<String>('nome_usuario', value);

  int? get idUsuarioCriouAtividade => getField<int>('idUsuarioCriouAtividade');
  set idUsuarioCriouAtividade(int? value) =>
      setField<int>('idUsuarioCriouAtividade', value);

  String? get nomeUsuarioCriouAtividade =>
      getField<String>('nome_usuario_criou_atividade');
  set nomeUsuarioCriouAtividade(String? value) =>
      setField<String>('nome_usuario_criou_atividade', value);

  bool? get visto => getField<bool>('visto');
  set visto(bool? value) => setField<bool>('visto', value);

  int? get idAtividade => getField<int>('idAtividade');
  set idAtividade(int? value) => setField<int>('idAtividade', value);

  String? get statusAtividade => getField<String>('status_atividade');
  set statusAtividade(String? value) =>
      setField<String>('status_atividade', value);
}
