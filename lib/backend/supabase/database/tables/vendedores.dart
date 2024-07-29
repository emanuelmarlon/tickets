import '../database.dart';

class VendedoresTable extends SupabaseTable<VendedoresRow> {
  @override
  String get tableName => 'vendedores';

  @override
  VendedoresRow createRow(Map<String, dynamic> data) => VendedoresRow(data);
}

class VendedoresRow extends SupabaseDataRow {
  VendedoresRow(super.data);

  @override
  SupabaseTable get table => VendedoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get userNs => getField<String>('userNs');
  set userNs(String? value) => setField<String>('userNs', value);

  String? get tipoVendedor => getField<String>('tipoVendedor');
  set tipoVendedor(String? value) => setField<String>('tipoVendedor', value);
}
