import '../database.dart';

class MembersTransactionsTable extends SupabaseTable<MembersTransactionsRow> {
  @override
  String get tableName => 'members_transactions';

  @override
  MembersTransactionsRow createRow(Map<String, dynamic> data) =>
      MembersTransactionsRow(data);
}

class MembersTransactionsRow extends SupabaseDataRow {
  MembersTransactionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MembersTransactionsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get churchId => getField<String>('church_id');
  set churchId(String? value) => setField<String>('church_id', value);

  String? get projectId => getField<String>('project_id');
  set projectId(String? value) => setField<String>('project_id', value);

  String? get memberId => getField<String>('member_id');
  set memberId(String? value) => setField<String>('member_id', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  String? get currency => getField<String>('currency');
  set currency(String? value) => setField<String>('currency', value);

  String? get paymentMethod => getField<String>('payment_method');
  set paymentMethod(String? value) => setField<String>('payment_method', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get paidAt => getField<DateTime>('paid_at');
  set paidAt(DateTime? value) => setField<DateTime>('paid_at', value);

  String? get transactionType => getField<String>('transaction_type');
  set transactionType(String? value) =>
      setField<String>('transaction_type', value);

  String? get subscriptionCode => getField<String>('subscription_code');
  set subscriptionCode(String? value) =>
      setField<String>('subscription_code', value);

  String? get partnershipPlan => getField<String>('partnership_plan');
  set partnershipPlan(String? value) =>
      setField<String>('partnership_plan', value);

  String? get partnershipId => getField<String>('partnership_id');
  set partnershipId(String? value) => setField<String>('partnership_id', value);

  String? get transactionTitle => getField<String>('transaction_title');
  set transactionTitle(String? value) =>
      setField<String>('transaction_title', value);

  String? get memberFullName => getField<String>('member_full_name');
  set memberFullName(String? value) =>
      setField<String>('member_full_name', value);
}
