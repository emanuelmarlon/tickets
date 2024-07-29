import '../database.dart';

class TotalSalesViewTable extends SupabaseTable<TotalSalesViewRow> {
  @override
  String get tableName => 'total_sales_view';

  @override
  TotalSalesViewRow createRow(Map<String, dynamic> data) =>
      TotalSalesViewRow(data);
}

class TotalSalesViewRow extends SupabaseDataRow {
  TotalSalesViewRow(super.data);

  @override
  SupabaseTable get table => TotalSalesViewTable();

  double? get totalLanox => getField<double>('total_lanox');
  set totalLanox(double? value) => setField<double>('total_lanox', value);

  double? get totalBiovegetais => getField<double>('total_biovegetais');
  set totalBiovegetais(double? value) =>
      setField<double>('total_biovegetais', value);

  double? get totalTrihair => getField<double>('total_trihair');
  set totalTrihair(double? value) => setField<double>('total_trihair', value);

  double? get totalGeral => getField<double>('total_geral');
  set totalGeral(double? value) => setField<double>('total_geral', value);
}
