import '../database.dart';

class POPsTable extends SupabaseTable<POPsRow> {
  @override
  String get tableName => 'POPs';

  @override
  POPsRow createRow(Map<String, dynamic> data) => POPsRow(data);
}

class POPsRow extends SupabaseDataRow {
  POPsRow(super.data);

  @override
  SupabaseTable get table => POPsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get pdf => getField<String>('pdf');
  set pdf(String? value) => setField<String>('pdf', value);

  String? get setor => getField<String>('setor');
  set setor(String? value) => setField<String>('setor', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);
}
