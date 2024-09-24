import '../database.dart';

class ProdutosV2Table extends SupabaseTable<ProdutosV2Row> {
  @override
  String get tableName => 'produtos_v2';

  @override
  ProdutosV2Row createRow(Map<String, dynamic> data) => ProdutosV2Row(data);
}

class ProdutosV2Row extends SupabaseDataRow {
  ProdutosV2Row(super.data);

  @override
  SupabaseTable get table => ProdutosV2Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get handle => getField<String>('handle');
  set handle(String? value) => setField<String>('handle', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get linha => getField<String>('linha');
  set linha(String? value) => setField<String>('linha', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get tags => getField<String>('Tags');
  set tags(String? value) => setField<String>('Tags', value);

  String? get sku => getField<String>('sku');
  set sku(String? value) => setField<String>('sku', value);

  double? get preco => getField<double>('preco');
  set preco(double? value) => setField<double>('preco', value);

  String? get imagem => getField<String>('imagem');
  set imagem(String? value) => setField<String>('imagem', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
