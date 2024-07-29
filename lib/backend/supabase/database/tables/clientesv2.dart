import '../database.dart';

class Clientesv2Table extends SupabaseTable<Clientesv2Row> {
  @override
  String get tableName => 'clientesv2';

  @override
  Clientesv2Row createRow(Map<String, dynamic> data) => Clientesv2Row(data);
}

class Clientesv2Row extends SupabaseDataRow {
  Clientesv2Row(super.data);

  @override
  SupabaseTable get table => Clientesv2Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get primeiroNome => getField<String>('primeiro_nome');
  set primeiroNome(String? value) => setField<String>('primeiro_nome', value);

  String? get ultimoNome => getField<String>('ultimo_nome');
  set ultimoNome(String? value) => setField<String>('ultimo_nome', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  dynamic get telefone => getField<dynamic>('telefone');
  set telefone(dynamic value) => setField<dynamic>('telefone', value);

  dynamic get email => getField<dynamic>('email');
  set email(dynamic value) => setField<dynamic>('email', value);

  DateTime? get datanascimento => getField<DateTime>('datanascimento');
  set datanascimento(DateTime? value) =>
      setField<DateTime>('datanascimento', value);

  double? get credito => getField<double>('credito');
  set credito(double? value) => setField<double>('credito', value);

  dynamic get endereco => getField<dynamic>('endereco');
  set endereco(dynamic value) => setField<dynamic>('endereco', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);
}
