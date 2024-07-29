import '../database.dart';

class LojasTable extends SupabaseTable<LojasRow> {
  @override
  String get tableName => 'lojas';

  @override
  LojasRow createRow(Map<String, dynamic> data) => LojasRow(data);
}

class LojasRow extends SupabaseDataRow {
  LojasRow(super.data);

  @override
  SupabaseTable get table => LojasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get razaosocial => getField<String>('razaosocial');
  set razaosocial(String? value) => setField<String>('razaosocial', value);

  String? get nomeFantasia => getField<String>('nomeFantasia');
  set nomeFantasia(String? value) => setField<String>('nomeFantasia', value);

  String? get cnpjCpf => getField<String>('CNPJ/CPF');
  set cnpjCpf(String? value) => setField<String>('CNPJ/CPF', value);

  String? get inscricaoestadual => getField<String>('inscricaoestadual');
  set inscricaoestadual(String? value) =>
      setField<String>('inscricaoestadual', value);

  String? get telefones => getField<String>('Telefones');
  set telefones(String? value) => setField<String>('Telefones', value);

  String? get emails => getField<String>('Emails');
  set emails(String? value) => setField<String>('Emails', value);

  String? get endereco => getField<String>('Endereco');
  set endereco(String? value) => setField<String>('Endereco', value);

  String? get bairro => getField<String>('Bairro');
  set bairro(String? value) => setField<String>('Bairro', value);

  String? get cidade => getField<String>('Cidade');
  set cidade(String? value) => setField<String>('Cidade', value);

  String? get estado => getField<String>('Estado');
  set estado(String? value) => setField<String>('Estado', value);

  String? get cep => getField<String>('CEP');
  set cep(String? value) => setField<String>('CEP', value);

  String? get contato => getField<String>('Contato');
  set contato(String? value) => setField<String>('Contato', value);

  String? get segmento => getField<String>('Segmento');
  set segmento(String? value) => setField<String>('Segmento', value);

  String? get redeCliente => getField<String>('redeCliente');
  set redeCliente(String? value) => setField<String>('redeCliente', value);

  String? get tags => getField<String>('tags');
  set tags(String? value) => setField<String>('tags', value);

  DateTime? get datacadastro => getField<DateTime>('datacadastro');
  set datacadastro(DateTime? value) =>
      setField<DateTime>('datacadastro', value);
}
