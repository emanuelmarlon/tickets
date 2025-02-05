import '../database.dart';

class ContatosByanaTable extends SupabaseTable<ContatosByanaRow> {
  @override
  String get tableName => 'contatos_byana';

  @override
  ContatosByanaRow createRow(Map<String, dynamic> data) =>
      ContatosByanaRow(data);
}

class ContatosByanaRow extends SupabaseDataRow {
  ContatosByanaRow(super.data);

  @override
  SupabaseTable get table => ContatosByanaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get sobrenome => getField<String>('sobrenome');
  set sobrenome(String? value) => setField<String>('sobrenome', value);

  String? get usuario => getField<String>('usuario');
  set usuario(String? value) => setField<String>('usuario', value);

  String? get userNs => getField<String>('user_ns');
  set userNs(String? value) => setField<String>('user_ns', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
