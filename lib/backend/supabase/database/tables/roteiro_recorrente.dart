import '../database.dart';

class RoteiroRecorrenteTable extends SupabaseTable<RoteiroRecorrenteRow> {
  @override
  String get tableName => 'roteiroRecorrente';

  @override
  RoteiroRecorrenteRow createRow(Map<String, dynamic> data) =>
      RoteiroRecorrenteRow(data);
}

class RoteiroRecorrenteRow extends SupabaseDataRow {
  RoteiroRecorrenteRow(super.data);

  @override
  SupabaseTable get table => RoteiroRecorrenteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idPromotora => getField<int>('idPromotora');
  set idPromotora(int? value) => setField<int>('idPromotora', value);

  int? get idCliente => getField<int>('idCliente');
  set idCliente(int? value) => setField<int>('idCliente', value);

  int? get dia => getField<int>('dia');
  set dia(int? value) => setField<int>('dia', value);
}
