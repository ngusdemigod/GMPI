import '../database.dart';

class TransactionNotificationsViewTable
    extends SupabaseTable<TransactionNotificationsViewRow> {
  @override
  String get tableName => 'transaction_notifications_view';

  @override
  TransactionNotificationsViewRow createRow(Map<String, dynamic> data) =>
      TransactionNotificationsViewRow(data);
}

class TransactionNotificationsViewRow extends SupabaseDataRow {
  TransactionNotificationsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionNotificationsViewTable();

  String? get transactionId => getField<String>('transaction_id');
  set transactionId(String? value) => setField<String>('transaction_id', value);

  String? get notificationId => getField<String>('notification_id');
  set notificationId(String? value) =>
      setField<String>('notification_id', value);

  String? get churchId => getField<String>('church_id');
  set churchId(String? value) => setField<String>('church_id', value);

  String? get memberId => getField<String>('member_id');
  set memberId(String? value) => setField<String>('member_id', value);

  DateTime? get occurredAt => getField<DateTime>('occurred_at');
  set occurredAt(DateTime? value) => setField<DateTime>('occurred_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);
}
