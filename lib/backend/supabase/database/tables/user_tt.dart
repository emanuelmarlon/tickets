import '../database.dart';

class UserTtTable extends SupabaseTable<UserTtRow> {
  @override
  String get tableName => 'user_tt';

  @override
  UserTtRow createRow(Map<String, dynamic> data) => UserTtRow(data);
}

class UserTtRow extends SupabaseDataRow {
  UserTtRow(super.data);

  @override
  SupabaseTable get table => UserTtTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);

  String? get userNs => getField<String>('user_ns');
  set userNs(String? value) => setField<String>('user_ns', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  DateTime? get nascimento => getField<DateTime>('nascimento');
  set nascimento(DateTime? value) => setField<DateTime>('nascimento', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get ip => getField<String>('IP');
  set ip(String? value) => setField<String>('IP', value);

  List<String> get tags => getListField<String>('tags');
  set tags(List<String>? value) => setListField<String>('tags', value);
}
