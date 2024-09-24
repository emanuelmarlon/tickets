import '../database.dart';

class ClientesExataTable extends SupabaseTable<ClientesExataRow> {
  @override
  String get tableName => 'clientes_exata';

  @override
  ClientesExataRow createRow(Map<String, dynamic> data) =>
      ClientesExataRow(data);
}

class ClientesExataRow extends SupabaseDataRow {
  ClientesExataRow(super.data);

  @override
  SupabaseTable get table => ClientesExataTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get razaoSocial => getField<String>('razao_social');
  set razaoSocial(String? value) => setField<String>('razao_social', value);

  String? get fantasia => getField<String>('fantasia');
  set fantasia(String? value) => setField<String>('fantasia', value);

  String? get cnpj => getField<String>('cnpj');
  set cnpj(String? value) => setField<String>('cnpj', value);

  String? get idBling => getField<String>('id_bling');
  set idBling(String? value) => setField<String>('id_bling', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  double? get numero => getField<double>('numero');
  set numero(double? value) => setField<double>('numero', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  String? get vendedor => getField<String>('vendedor');
  set vendedor(String? value) => setField<String>('vendedor', value);

  String? get segmento => getField<String>('segmento');
  set segmento(String? value) => setField<String>('segmento', value);
}
