import '../database.dart';

class NotasFiscaisTable extends SupabaseTable<NotasFiscaisRow> {
  @override
  String get tableName => 'notas_fiscais';

  @override
  NotasFiscaisRow createRow(Map<String, dynamic> data) => NotasFiscaisRow(data);
}

class NotasFiscaisRow extends SupabaseDataRow {
  NotasFiscaisRow(super.data);

  @override
  SupabaseTable get table => NotasFiscaisTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get idnfe => getField<String>('idnfe');
  set idnfe(String? value) => setField<String>('idnfe', value);

  String? get serie => getField<String>('serie');
  set serie(String? value) => setField<String>('serie', value);

  String? get numeroNota => getField<String>('numero_nota');
  set numeroNota(String? value) => setField<String>('numero_nota', value);

  String? get loja => getField<String>('loja');
  set loja(String? value) => setField<String>('loja', value);

  String? get numeropedidoloja => getField<String>('numeropedidoloja');
  set numeropedidoloja(String? value) =>
      setField<String>('numeropedidoloja', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get situacao => getField<String>('situacao');
  set situacao(String? value) => setField<String>('situacao', value);

  String? get idcontato => getField<String>('idcontato');
  set idcontato(String? value) => setField<String>('idcontato', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get cnpj => getField<String>('cnpj');
  set cnpj(String? value) => setField<String>('cnpj', value);

  String? get ie => getField<String>('ie');
  set ie(String? value) => setField<String>('ie', value);

  String? get rg => getField<String>('rg');
  set rg(String? value) => setField<String>('rg', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get numeroEndereco => getField<String>('numero_endereco');
  set numeroEndereco(String? value) =>
      setField<String>('numero_endereco', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get fone => getField<String>('fone');
  set fone(String? value) => setField<String>('fone', value);

  String? get vendedor => getField<String>('vendedor');
  set vendedor(String? value) => setField<String>('vendedor', value);

  DateTime? get datasaidaentrada => getField<DateTime>('datasaidaentrada');
  set datasaidaentrada(DateTime? value) =>
      setField<DateTime>('datasaidaentrada', value);

  DateTime? get dataemissao => getField<DateTime>('dataemissao');
  set dataemissao(DateTime? value) => setField<DateTime>('dataemissao', value);

  double? get valornota => getField<double>('valornota');
  set valornota(double? value) => setField<double>('valornota', value);

  String? get chaveacesso => getField<String>('chaveacesso');
  set chaveacesso(String? value) => setField<String>('chaveacesso', value);

  String? get xml => getField<String>('xml');
  set xml(String? value) => setField<String>('xml', value);

  String? get linkdanfe => getField<String>('linkdanfe');
  set linkdanfe(String? value) => setField<String>('linkdanfe', value);

  String? get linkpdf => getField<String>('linkpdf');
  set linkpdf(String? value) => setField<String>('linkpdf', value);

  String? get codigorastreamento => getField<String>('codigorastreamento');
  set codigorastreamento(String? value) =>
      setField<String>('codigorastreamento', value);

  String? get unidadenegocio => getField<String>('unidadenegocio');
  set unidadenegocio(String? value) =>
      setField<String>('unidadenegocio', value);

  String? get naturezaoperacao => getField<String>('naturezaoperacao');
  set naturezaoperacao(String? value) =>
      setField<String>('naturezaoperacao', value);

  String? get tipointegracao => getField<String>('tipointegracao');
  set tipointegracao(String? value) =>
      setField<String>('tipointegracao', value);
}
