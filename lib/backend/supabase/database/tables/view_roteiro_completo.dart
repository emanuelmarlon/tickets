import '../database.dart';

class ViewRoteiroCompletoTable extends SupabaseTable<ViewRoteiroCompletoRow> {
  @override
  String get tableName => 'view_roteiro_completo';

  @override
  ViewRoteiroCompletoRow createRow(Map<String, dynamic> data) =>
      ViewRoteiroCompletoRow(data);
}

class ViewRoteiroCompletoRow extends SupabaseDataRow {
  ViewRoteiroCompletoRow(super.data);

  @override
  SupabaseTable get table => ViewRoteiroCompletoTable();

  int? get roteiroId => getField<int>('roteiro_id');
  set roteiroId(int? value) => setField<int>('roteiro_id', value);

  DateTime? get roteiroCreatedAt => getField<DateTime>('roteiro_created_at');
  set roteiroCreatedAt(DateTime? value) =>
      setField<DateTime>('roteiro_created_at', value);

  int? get idPromotora => getField<int>('idPromotora');
  set idPromotora(int? value) => setField<int>('idPromotora', value);

  int? get idCliente => getField<int>('idCliente');
  set idCliente(int? value) => setField<int>('idCliente', value);

  int? get dia => getField<int>('dia');
  set dia(int? value) => setField<int>('dia', value);

  String? get diaExtenso => getField<String>('dia_extenso');
  set diaExtenso(String? value) => setField<String>('dia_extenso', value);

  int? get vendedorId => getField<int>('vendedor_id');
  set vendedorId(int? value) => setField<int>('vendedor_id', value);

  DateTime? get vendedorCreatedAt => getField<DateTime>('vendedor_created_at');
  set vendedorCreatedAt(DateTime? value) =>
      setField<DateTime>('vendedor_created_at', value);

  String? get vendedorNome => getField<String>('vendedor_nome');
  set vendedorNome(String? value) => setField<String>('vendedor_nome', value);

  String? get vendedorEmail => getField<String>('vendedor_email');
  set vendedorEmail(String? value) => setField<String>('vendedor_email', value);

  String? get vendedorTelefone => getField<String>('vendedor_telefone');
  set vendedorTelefone(String? value) =>
      setField<String>('vendedor_telefone', value);

  String? get vendedorUserns => getField<String>('vendedor_userns');
  set vendedorUserns(String? value) =>
      setField<String>('vendedor_userns', value);

  String? get vendedorTipovendedor => getField<String>('vendedor_tipovendedor');
  set vendedorTipovendedor(String? value) =>
      setField<String>('vendedor_tipovendedor', value);

  int? get lojaId => getField<int>('loja_id');
  set lojaId(int? value) => setField<int>('loja_id', value);

  DateTime? get lojaCreatedAt => getField<DateTime>('loja_created_at');
  set lojaCreatedAt(DateTime? value) =>
      setField<DateTime>('loja_created_at', value);

  String? get lojaRazaosocial => getField<String>('loja_razaosocial');
  set lojaRazaosocial(String? value) =>
      setField<String>('loja_razaosocial', value);

  String? get lojaNomefantasia => getField<String>('loja_nomefantasia');
  set lojaNomefantasia(String? value) =>
      setField<String>('loja_nomefantasia', value);

  String? get lojaCnpjCpf => getField<String>('loja_cnpj_cpf');
  set lojaCnpjCpf(String? value) => setField<String>('loja_cnpj_cpf', value);

  String? get lojaInscricaoestadual =>
      getField<String>('loja_inscricaoestadual');
  set lojaInscricaoestadual(String? value) =>
      setField<String>('loja_inscricaoestadual', value);

  String? get lojaTelefones => getField<String>('loja_telefones');
  set lojaTelefones(String? value) => setField<String>('loja_telefones', value);

  String? get lojaEmails => getField<String>('loja_emails');
  set lojaEmails(String? value) => setField<String>('loja_emails', value);

  String? get lojaEndereco => getField<String>('loja_endereco');
  set lojaEndereco(String? value) => setField<String>('loja_endereco', value);

  String? get lojaBairro => getField<String>('loja_bairro');
  set lojaBairro(String? value) => setField<String>('loja_bairro', value);

  String? get lojaCidade => getField<String>('loja_cidade');
  set lojaCidade(String? value) => setField<String>('loja_cidade', value);

  String? get lojaEstado => getField<String>('loja_estado');
  set lojaEstado(String? value) => setField<String>('loja_estado', value);

  String? get lojaCep => getField<String>('loja_cep');
  set lojaCep(String? value) => setField<String>('loja_cep', value);

  String? get lojaContato => getField<String>('loja_contato');
  set lojaContato(String? value) => setField<String>('loja_contato', value);

  String? get lojaSegmento => getField<String>('loja_segmento');
  set lojaSegmento(String? value) => setField<String>('loja_segmento', value);

  String? get lojaRedecliente => getField<String>('loja_redecliente');
  set lojaRedecliente(String? value) =>
      setField<String>('loja_redecliente', value);

  String? get lojaTags => getField<String>('loja_tags');
  set lojaTags(String? value) => setField<String>('loja_tags', value);

  DateTime? get lojaDatacadastro => getField<DateTime>('loja_datacadastro');
  set lojaDatacadastro(DateTime? value) =>
      setField<DateTime>('loja_datacadastro', value);
}
