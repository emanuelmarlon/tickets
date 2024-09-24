import '../database.dart';

class ChatByanaTable extends SupabaseTable<ChatByanaRow> {
  @override
  String get tableName => 'chat_byana';

  @override
  ChatByanaRow createRow(Map<String, dynamic> data) => ChatByanaRow(data);
}

class ChatByanaRow extends SupabaseDataRow {
  ChatByanaRow(super.data);

  @override
  SupabaseTable get table => ChatByanaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get agentName => getField<String>('agent_name');
  set agentName(String? value) => setField<String>('agent_name', value);

  double? get agentId => getField<double>('agent_id');
  set agentId(double? value) => setField<double>('agent_id', value);

  DateTime? get lastInteraction => getField<DateTime>('last_interaction');
  set lastInteraction(DateTime? value) =>
      setField<DateTime>('last_interaction', value);

  DateTime? get lastAgentActionAt => getField<DateTime>('last_agent_action_at');
  set lastAgentActionAt(DateTime? value) =>
      setField<DateTime>('last_agent_action_at', value);

  String? get userNr => getField<String>('user_nr');
  set userNr(String? value) => setField<String>('user_nr', value);

  int? get user => getField<int>('user');
  set user(int? value) => setField<int>('user', value);

  DateTime? get abertoAs => getField<DateTime>('aberto_as');
  set abertoAs(DateTime? value) => setField<DateTime>('aberto_as', value);

  DateTime? get concluidoAs => getField<DateTime>('concluido_as');
  set concluidoAs(DateTime? value) => setField<DateTime>('concluido_as', value);

  dynamic get conversa => getField<dynamic>('conversa');
  set conversa(dynamic value) => setField<dynamic>('conversa', value);

  String? get assunto => getField<String>('assunto');
  set assunto(String? value) => setField<String>('assunto', value);

  double? get nps => getField<double>('nps');
  set nps(double? value) => setField<double>('nps', value);

  String? get assuntoAtendimento => getField<String>('assunto_atendimento');
  set assuntoAtendimento(String? value) =>
      setField<String>('assunto_atendimento', value);

  String? get subAssuntoAtendimento =>
      getField<String>('sub_assunto_atendimento');
  set subAssuntoAtendimento(String? value) =>
      setField<String>('sub_assunto_atendimento', value);
}
