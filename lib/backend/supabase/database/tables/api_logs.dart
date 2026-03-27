import '../database.dart';

class ApiLogsTable extends SupabaseTable<ApiLogsRow> {
  @override
  String get tableName => 'api_logs';

  @override
  ApiLogsRow createRow(Map<String, dynamic> data) => ApiLogsRow(data);
}

class ApiLogsRow extends SupabaseDataRow {
  ApiLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ApiLogsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get source => getField<String>('source')!;
  set source(String value) => setField<String>('source', value);

  String? get event => getField<String>('event');
  set event(String? value) => setField<String>('event', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  String? get subscriptionCode => getField<String>('subscription_code');
  set subscriptionCode(String? value) =>
      setField<String>('subscription_code', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String? get message => getField<String>('message');
  set message(String? value) => setField<String>('message', value);

  dynamic? get payload => getField<dynamic>('payload');
  set payload(dynamic? value) => setField<dynamic>('payload', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
