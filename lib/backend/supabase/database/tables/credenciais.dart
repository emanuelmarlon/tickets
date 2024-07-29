import '../database.dart';

class CredenciaisTable extends SupabaseTable<CredenciaisRow> {
  @override
  String get tableName => 'credenciais';

  @override
  CredenciaisRow createRow(Map<String, dynamic> data) => CredenciaisRow(data);
}

class CredenciaisRow extends SupabaseDataRow {
  CredenciaisRow(super.data);

  @override
  SupabaseTable get table => CredenciaisTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get token => getField<String>('token');
  set token(String? value) => setField<String>('token', value);

  String? get refresh => getField<String>('refresh');
  set refresh(String? value) => setField<String>('refresh', value);

  String? get sistema => getField<String>('sistema');
  set sistema(String? value) => setField<String>('sistema', value);
}
