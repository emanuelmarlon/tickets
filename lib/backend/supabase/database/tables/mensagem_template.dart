import '../database.dart';

class MensagemTemplateTable extends SupabaseTable<MensagemTemplateRow> {
  @override
  String get tableName => 'mensagem_template';

  @override
  MensagemTemplateRow createRow(Map<String, dynamic> data) =>
      MensagemTemplateRow(data);
}

class MensagemTemplateRow extends SupabaseDataRow {
  MensagemTemplateRow(super.data);

  @override
  SupabaseTable get table => MensagemTemplateTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get msyType => getField<String>('msy_type');
  set msyType(String? value) => setField<String>('msy_type', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  DateTime? get updatedAt => getField<DateTime>('updated-at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated-at', value);
}
