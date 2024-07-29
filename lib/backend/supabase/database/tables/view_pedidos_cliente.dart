import '../database.dart';

class ViewPedidosClienteTable extends SupabaseTable<ViewPedidosClienteRow> {
  @override
  String get tableName => 'view_pedidos_cliente';

  @override
  ViewPedidosClienteRow createRow(Map<String, dynamic> data) =>
      ViewPedidosClienteRow(data);
}

class ViewPedidosClienteRow extends SupabaseDataRow {
  ViewPedidosClienteRow(super.data);

  @override
  SupabaseTable get table => ViewPedidosClienteTable();

  String? get cpf => getField<String>('CPF');
  set cpf(String? value) => setField<String>('CPF', value);

  int? get totalEmPedidos => getField<int>('Total em pedidos');
  set totalEmPedidos(int? value) => setField<int>('Total em pedidos', value);

  double? get valorTotalGasto => getField<double>('Valor total gasto');
  set valorTotalGasto(double? value) =>
      setField<double>('Valor total gasto', value);

  DateTime? get dataDoUltimoPedido =>
      getField<DateTime>('Data do ultimo pedido');
  set dataDoUltimoPedido(DateTime? value) =>
      setField<DateTime>('Data do ultimo pedido', value);

  double? get diasSemCompras => getField<double>('Dias sem compras');
  set diasSemCompras(double? value) =>
      setField<double>('Dias sem compras', value);
}
