import '../database.dart';

class ProdutosTable extends SupabaseTable<ProdutosRow> {
  @override
  String get tableName => 'produtos';

  @override
  ProdutosRow createRow(Map<String, dynamic> data) => ProdutosRow(data);
}

class ProdutosRow extends SupabaseDataRow {
  ProdutosRow(super.data);

  @override
  SupabaseTable get table => ProdutosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get tipoProduto => getField<String>('tipoProduto');
  set tipoProduto(String? value) => setField<String>('tipoProduto', value);

  String? get tipoCabelo => getField<String>('tipo_cabelo');
  set tipoCabelo(String? value) => setField<String>('tipo_cabelo', value);

  String? get indicacao => getField<String>('indicacao');
  set indicacao(String? value) => setField<String>('indicacao', value);

  String? get ingredientes => getField<String>('ingredientes');
  set ingredientes(String? value) => setField<String>('ingredientes', value);

  String? get instrucoesUso => getField<String>('instrucoes_uso');
  set instrucoesUso(String? value) => setField<String>('instrucoes_uso', value);

  double? get preco => getField<double>('preco');
  set preco(double? value) => setField<double>('preco', value);
}
