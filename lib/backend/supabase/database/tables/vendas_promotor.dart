import '../database.dart';

class VendasPromotorTable extends SupabaseTable<VendasPromotorRow> {
  @override
  String get tableName => 'vendasPromotor';

  @override
  VendasPromotorRow createRow(Map<String, dynamic> data) =>
      VendasPromotorRow(data);
}

class VendasPromotorRow extends SupabaseDataRow {
  VendasPromotorRow(super.data);

  @override
  SupabaseTable get table => VendasPromotorTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  double? get lanox => getField<double>('lanox');
  set lanox(double? value) => setField<double>('lanox', value);

  double? get biovegetais => getField<double>('biovegetais');
  set biovegetais(double? value) => setField<double>('biovegetais', value);

  double? get trihair => getField<double>('trihair');
  set trihair(double? value) => setField<double>('trihair', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  int? get idVendedor => getField<int>('idVendedor');
  set idVendedor(int? value) => setField<int>('idVendedor', value);

  int? get idLoja => getField<int>('idLoja');
  set idLoja(int? value) => setField<int>('idLoja', value);
}
