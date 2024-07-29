import '../database.dart';

class ViewPedidosResumoTable extends SupabaseTable<ViewPedidosResumoRow> {
  @override
  String get tableName => 'view_pedidos_resumo';

  @override
  ViewPedidosResumoRow createRow(Map<String, dynamic> data) =>
      ViewPedidosResumoRow(data);
}

class ViewPedidosResumoRow extends SupabaseDataRow {
  ViewPedidosResumoRow(super.data);

  @override
  SupabaseTable get table => ViewPedidosResumoTable();

  double? get valorTotalPedidos => getField<double>('valor_total_pedidos');
  set valorTotalPedidos(double? value) =>
      setField<double>('valor_total_pedidos', value);

  double? get diasDesdeUltimoPedido =>
      getField<double>('dias_desde_ultimo_pedido');
  set diasDesdeUltimoPedido(double? value) =>
      setField<double>('dias_desde_ultimo_pedido', value);
}
