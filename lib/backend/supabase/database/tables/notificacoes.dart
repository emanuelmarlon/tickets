import '../database.dart';

class NotificacoesTable extends SupabaseTable<NotificacoesRow> {
  @override
  String get tableName => 'notificacoes';

  @override
  NotificacoesRow createRow(Map<String, dynamic> data) => NotificacoesRow(data);
}

class NotificacoesRow extends SupabaseDataRow {
  NotificacoesRow(super.data);

  @override
  SupabaseTable get table => NotificacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idTicket => getField<int>('idTicket');
  set idTicket(int? value) => setField<int>('idTicket', value);

  int? get idUsuario => getField<int>('idUsuario');
  set idUsuario(int? value) => setField<int>('idUsuario', value);

  int? get idUsuarioCriouAtividade => getField<int>('idUsuarioCriouAtividade');
  set idUsuarioCriouAtividade(int? value) =>
      setField<int>('idUsuarioCriouAtividade', value);

  bool? get visto => getField<bool>('visto');
  set visto(bool? value) => setField<bool>('visto', value);

  int? get idAtividade => getField<int>('idAtividade');
  set idAtividade(int? value) => setField<int>('idAtividade', value);
}
