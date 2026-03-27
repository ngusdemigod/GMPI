import '../database.dart';

class MemberDetailsPlusMembershipSummaryTable
    extends SupabaseTable<MemberDetailsPlusMembershipSummaryRow> {
  @override
  String get tableName => 'member_details_plus_membership_summary';

  @override
  MemberDetailsPlusMembershipSummaryRow createRow(Map<String, dynamic> data) =>
      MemberDetailsPlusMembershipSummaryRow(data);
}

class MemberDetailsPlusMembershipSummaryRow extends SupabaseDataRow {
  MemberDetailsPlusMembershipSummaryRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => MemberDetailsPlusMembershipSummaryTable();

  String? get memberId => getField<String>('member_id');
  set memberId(String? value) => setField<String>('member_id', value);

  String? get churchId => getField<String>('church_id');
  set churchId(String? value) => setField<String>('church_id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get joinedAt => getField<DateTime>('joined_at');
  set joinedAt(DateTime? value) => setField<DateTime>('joined_at', value);

  String? get membershipId => getField<String>('membership_id');
  set membershipId(String? value) => setField<String>('membership_id', value);

  String? get membershipStatus => getField<String>('membership_status');
  set membershipStatus(String? value) =>
      setField<String>('membership_status', value);

  String? get subscriptionCode => getField<String>('subscription_code');
  set subscriptionCode(String? value) =>
      setField<String>('subscription_code', value);

  String? get customerCode => getField<String>('customer_code');
  set customerCode(String? value) => setField<String>('customer_code', value);

  String? get planCode => getField<String>('plan_code');
  set planCode(String? value) => setField<String>('plan_code', value);

  String? get partnershipPlan => getField<String>('partnership_plan');
  set partnershipPlan(String? value) =>
      setField<String>('partnership_plan', value);

  String? get interval => getField<String>('interval');
  set interval(String? value) => setField<String>('interval', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get dueDate => getField<DateTime>('Due_date');
  set dueDate(DateTime? value) => setField<DateTime>('Due_date', value);

  DateTime? get membershipCreatedAt =>
      getField<DateTime>('membership_created_at');
  set membershipCreatedAt(DateTime? value) =>
      setField<DateTime>('membership_created_at', value);

  String? get referenceField => getField<String>('reference');
  set referenceField(String? value) => setField<String>('reference', value);

  String? get emailToken => getField<String>('Email_token');
  set emailToken(String? value) => setField<String>('Email_token', value);

  DateTime? get canceledAt => getField<DateTime>('canceled_At');
  set canceledAt(DateTime? value) => setField<DateTime>('canceled_At', value);
}
