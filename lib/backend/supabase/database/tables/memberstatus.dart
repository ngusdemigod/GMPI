import '../database.dart';

class MemberstatusTable extends SupabaseTable<MemberstatusRow> {
  @override
  String get tableName => 'memberstatus';

  @override
  MemberstatusRow createRow(Map<String, dynamic> data) => MemberstatusRow(data);
}

class MemberstatusRow extends SupabaseDataRow {
  MemberstatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MemberstatusTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
