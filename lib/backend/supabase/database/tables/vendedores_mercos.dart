import '../database.dart';

class VendedoresMercosTable extends SupabaseTable<VendedoresMercosRow> {
  @override
  String get tableName => 'vendedoresMercos';

  @override
  VendedoresMercosRow createRow(Map<String, dynamic> data) =>
      VendedoresMercosRow(data);
}

class VendedoresMercosRow extends SupabaseDataRow {
  VendedoresMercosRow(super.data);

  @override
  SupabaseTable get table => VendedoresMercosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get codigo => getField<int>('codigo');
  set codigo(int? value) => setField<int>('codigo', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);
}
