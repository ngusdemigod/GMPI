import '../database.dart';

class AuditLogsTable extends SupabaseTable<AuditLogsRow> {
  @override
  String get tableName => 'audit_logs';

  @override
  AuditLogsRow createRow(Map<String, dynamic> data) => AuditLogsRow(data);
}

class AuditLogsRow extends SupabaseDataRow {
  AuditLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AuditLogsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get occurredAt => getField<DateTime>('occurred_at')!;
  set occurredAt(DateTime value) => setField<DateTime>('occurred_at', value);

  String get tableNameField => getField<String>('table_name')!;
  set tableNameField(String value) => setField<String>('table_name', value);

  String get operation => getField<String>('operation')!;
  set operation(String value) => setField<String>('operation', value);

  String? get recordId => getField<String>('record_id');
  set recordId(String? value) => setField<String>('record_id', value);

  dynamic? get oldData => getField<dynamic>('old_data');
  set oldData(dynamic? value) => setField<dynamic>('old_data', value);

  dynamic? get newData => getField<dynamic>('new_data');
  set newData(dynamic? value) => setField<dynamic>('new_data', value);

  String? get actorUserId => getField<String>('actor_user_id');
  set actorUserId(String? value) => setField<String>('actor_user_id', value);

  String? get actorRole => getField<String>('actor_role');
  set actorRole(String? value) => setField<String>('actor_role', value);

  String? get churchId => getField<String>('church_id');
  set churchId(String? value) => setField<String>('church_id', value);

  String? get clientIp => getField<String>('client_ip');
  set clientIp(String? value) => setField<String>('client_ip', value);

  String? get userAgent => getField<String>('user_agent');
  set userAgent(String? value) => setField<String>('user_agent', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
