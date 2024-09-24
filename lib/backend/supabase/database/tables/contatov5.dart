import '../database.dart';

class Contatov5Table extends SupabaseTable<Contatov5Row> {
  @override
  String get tableName => 'contatov5';

  @override
  Contatov5Row createRow(Map<String, dynamic> data) => Contatov5Row(data);
}

class Contatov5Row extends SupabaseDataRow {
  Contatov5Row(super.data);

  @override
  SupabaseTable get table => Contatov5Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userNs => getField<String>('user_ns');
  set userNs(String? value) => setField<String>('user_ns', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefoneCom9 => getField<String>('telefone_com9');
  set telefoneCom9(String? value) => setField<String>('telefone_com9', value);

  String? get telefoneSem9 => getField<String>('telefone_sem9');
  set telefoneSem9(String? value) => setField<String>('telefone_sem9', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get idPedido => getField<String>('id_pedido');
  set idPedido(String? value) => setField<String>('id_pedido', value);

  String? get tokenCarrinho => getField<String>('token_carrinho');
  set tokenCarrinho(String? value) => setField<String>('token_carrinho', value);

  bool? get validado => getField<bool>('validado');
  set validado(bool? value) => setField<bool>('validado', value);
}
