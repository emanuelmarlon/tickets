import '../database.dart';

class TesteTable extends SupabaseTable<TesteRow> {
  @override
  String get tableName => 'teste';

  @override
  TesteRow createRow(Map<String, dynamic> data) => TesteRow(data);
}

class TesteRow extends SupabaseDataRow {
  TesteRow(super.data);

  @override
  SupabaseTable get table => TesteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
