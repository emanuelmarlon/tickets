import '../database.dart';

class RoteiroTable extends SupabaseTable<RoteiroRow> {
  @override
  String get tableName => 'roteiro';

  @override
  RoteiroRow createRow(Map<String, dynamic> data) => RoteiroRow(data);
}

class RoteiroRow extends SupabaseDataRow {
  RoteiroRow(super.data);

  @override
  SupabaseTable get table => RoteiroTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get dataVisita => getField<DateTime>('dataVisita');
  set dataVisita(DateTime? value) => setField<DateTime>('dataVisita', value);

  int? get promotora => getField<int>('promotora');
  set promotora(int? value) => setField<int>('promotora', value);

  int? get loja => getField<int>('loja');
  set loja(int? value) => setField<int>('loja', value);

  String? get status => getField<String>('Status');
  set status(String? value) => setField<String>('Status', value);

  int? get quantidadeVendida => getField<int>('quantidadeVendida');
  set quantidadeVendida(int? value) =>
      setField<int>('quantidadeVendida', value);

  bool? get fotoGondola => getField<bool>('fotoGondola');
  set fotoGondola(bool? value) => setField<bool>('fotoGondola', value);

  bool? get recorrente => getField<bool>('recorrente');
  set recorrente(bool? value) => setField<bool>('recorrente', value);
}
