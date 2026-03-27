import '../database.dart';

class EdgeLogsTable extends SupabaseTable<EdgeLogsRow> {
  @override
  String get tableName => 'edge_logs';

  @override
  EdgeLogsRow createRow(Map<String, dynamic> data) => EdgeLogsRow(data);
}

class EdgeLogsRow extends SupabaseDataRow {
  EdgeLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EdgeLogsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get source => getField<String>('source')!;
  set source(String value) => setField<String>('source', value);

  String get event => getField<String>('event')!;
  set event(String value) => setField<String>('event', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  String? get subscriptionCode => getField<String>('subscription_code');
  set subscriptionCode(String? value) =>
      setField<String>('subscription_code', value);

  dynamic get payload => getField<dynamic>('payload')!;
  set payload(dynamic value) => setField<dynamic>('payload', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String? get errorMessage => getField<String>('error_message');
  set errorMessage(String? value) => setField<String>('error_message', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
