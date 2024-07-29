import '../database.dart';

class CodesCrmTable extends SupabaseTable<CodesCrmRow> {
  @override
  String get tableName => 'codes_crm';

  @override
  CodesCrmRow createRow(Map<String, dynamic> data) => CodesCrmRow(data);
}

class CodesCrmRow extends SupabaseDataRow {
  CodesCrmRow(super.data);

  @override
  SupabaseTable get table => CodesCrmTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  double? get vale => getField<double>('vale');
  set vale(double? value) => setField<double>('vale', value);

  double? get quantity => getField<double>('quantity');
  set quantity(double? value) => setField<double>('quantity', value);

  DateTime? get startAt => getField<DateTime>('start_at');
  set startAt(DateTime? value) => setField<DateTime>('start_at', value);

  DateTime? get endAt => getField<DateTime>('end_at');
  set endAt(DateTime? value) => setField<DateTime>('end_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get customer => getField<int>('customer');
  set customer(int? value) => setField<int>('customer', value);

  String? get code => getField<String>('code');
  set code(String? value) => setField<String>('code', value);

  int? get promocodeId => getField<int>('promocode_id');
  set promocodeId(int? value) => setField<int>('promocode_id', value);
}
