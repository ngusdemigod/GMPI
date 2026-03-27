import '../database.dart';

class MembershipListTable extends SupabaseTable<MembershipListRow> {
  @override
  String get tableName => 'membership_list';

  @override
  MembershipListRow createRow(Map<String, dynamic> data) =>
      MembershipListRow(data);
}

class MembershipListRow extends SupabaseDataRow {
  MembershipListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MembershipListTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get churchId => getField<String>('church_id')!;
  set churchId(String value) => setField<String>('church_id', value);

  String get memberId => getField<String>('member_id')!;
  set memberId(String value) => setField<String>('member_id', value);

  String? get subscriptionCode => getField<String>('subscription_code');
  set subscriptionCode(String? value) =>
      setField<String>('subscription_code', value);

  String? get customerCode => getField<String>('customer_code');
  set customerCode(String? value) => setField<String>('customer_code', value);

  String? get planCode => getField<String>('plan_code');
  set planCode(String? value) => setField<String>('plan_code', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get dueDate => getField<DateTime>('Due_date');
  set dueDate(DateTime? value) => setField<DateTime>('Due_date', value);

  String? get interval => getField<String>('interval');
  set interval(String? value) => setField<String>('interval', value);

  String? get partnershipPlan => getField<String>('partnership_plan');
  set partnershipPlan(String? value) =>
      setField<String>('partnership_plan', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  String? get emailToken => getField<String>('Email_token');
  set emailToken(String? value) => setField<String>('Email_token', value);

  DateTime? get canceledAt => getField<DateTime>('canceled_At');
  set canceledAt(DateTime? value) => setField<DateTime>('canceled_At', value);

  String? get cronExpression => getField<String>('cron_expression');
  set cronExpression(String? value) =>
      setField<String>('cron_expression', value);

  String? get paystackCustomerId => getField<String>('paystack customer_id');
  set paystackCustomerId(String? value) =>
      setField<String>('paystack customer_id', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);
}
