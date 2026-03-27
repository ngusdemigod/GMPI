import '../database.dart';

class MembershipSummaryViewTable
    extends SupabaseTable<MembershipSummaryViewRow> {
  @override
  String get tableName => 'membership_summary_view';

  @override
  MembershipSummaryViewRow createRow(Map<String, dynamic> data) =>
      MembershipSummaryViewRow(data);
}

class MembershipSummaryViewRow extends SupabaseDataRow {
  MembershipSummaryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MembershipSummaryViewTable();

  String? get memberId => getField<String>('member_id');
  set memberId(String? value) => setField<String>('member_id', value);

  String? get churchId => getField<String>('church_id');
  set churchId(String? value) => setField<String>('church_id', value);

  String? get firstname => getField<String>('firstname');
  set firstname(String? value) => setField<String>('firstname', value);

  String? get lastname => getField<String>('lastname');
  set lastname(String? value) => setField<String>('lastname', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  String? get memberRole => getField<String>('member_role');
  set memberRole(String? value) => setField<String>('member_role', value);

  bool? get memberIsActive => getField<bool>('member_is_active');
  set memberIsActive(bool? value) => setField<bool>('member_is_active', value);

  DateTime? get memberJoinedAt => getField<DateTime>('member_joined_at');
  set memberJoinedAt(DateTime? value) =>
      setField<DateTime>('member_joined_at', value);

  String? get membershipId => getField<String>('membership_id');
  set membershipId(String? value) => setField<String>('membership_id', value);

  String? get membershipReference => getField<String>('membership_reference');
  set membershipReference(String? value) =>
      setField<String>('membership_reference', value);

  String? get membershipStatus => getField<String>('membership_status');
  set membershipStatus(String? value) =>
      setField<String>('membership_status', value);

  String? get subscriptionCode => getField<String>('subscription_code');
  set subscriptionCode(String? value) =>
      setField<String>('subscription_code', value);

  String? get planCode => getField<String>('plan_code');
  set planCode(String? value) => setField<String>('plan_code', value);

  String? get billingInterval => getField<String>('billing_interval');
  set billingInterval(String? value) =>
      setField<String>('billing_interval', value);

  DateTime? get membershipStartDate =>
      getField<DateTime>('membership_start_date');
  set membershipStartDate(DateTime? value) =>
      setField<DateTime>('membership_start_date', value);

  DateTime? get membershipDueDate => getField<DateTime>('membership_due_date');
  set membershipDueDate(DateTime? value) =>
      setField<DateTime>('membership_due_date', value);

  DateTime? get membershipCanceledAt =>
      getField<DateTime>('membership_canceled_at');
  set membershipCanceledAt(DateTime? value) =>
      setField<DateTime>('membership_canceled_at', value);

  String? get paystackCustomerCode =>
      getField<String>('paystack_customer_code');
  set paystackCustomerCode(String? value) =>
      setField<String>('paystack_customer_code', value);

  String? get paystackCustomerId => getField<String>('paystack_customer_id');
  set paystackCustomerId(String? value) =>
      setField<String>('paystack_customer_id', value);

  String? get paystackEmailToken => getField<String>('paystack_email_token');
  set paystackEmailToken(String? value) =>
      setField<String>('paystack_email_token', value);

  DateTime? get membershipCreatedAt =>
      getField<DateTime>('membership_created_at');
  set membershipCreatedAt(DateTime? value) =>
      setField<DateTime>('membership_created_at', value);

  String? get partnershipPlanId => getField<String>('partnership_plan_id');
  set partnershipPlanId(String? value) =>
      setField<String>('partnership_plan_id', value);

  String? get partnershipId => getField<String>('partnership_id');
  set partnershipId(String? value) => setField<String>('partnership_id', value);

  String? get partnershipTitle => getField<String>('partnership_title');
  set partnershipTitle(String? value) =>
      setField<String>('partnership_title', value);

  String? get partnershipDescription =>
      getField<String>('partnership_description');
  set partnershipDescription(String? value) =>
      setField<String>('partnership_description', value);

  int? get partnershipAmountLow => getField<int>('partnership_amount_low');
  set partnershipAmountLow(int? value) =>
      setField<int>('partnership_amount_low', value);

  int? get partnershipAmountHigh => getField<int>('partnership_amount_high');
  set partnershipAmountHigh(int? value) =>
      setField<int>('partnership_amount_high', value);

  String? get transactionId => getField<String>('transaction_id');
  set transactionId(String? value) => setField<String>('transaction_id', value);

  String? get transactionReference => getField<String>('transaction_reference');
  set transactionReference(String? value) =>
      setField<String>('transaction_reference', value);

  double? get amountPaid => getField<double>('amount_paid');
  set amountPaid(double? value) => setField<double>('amount_paid', value);

  String? get currency => getField<String>('currency');
  set currency(String? value) => setField<String>('currency', value);

  String? get paymentMethod => getField<String>('payment_method');
  set paymentMethod(String? value) => setField<String>('payment_method', value);

  String? get transactionStatus => getField<String>('transaction_status');
  set transactionStatus(String? value) =>
      setField<String>('transaction_status', value);

  DateTime? get paidAt => getField<DateTime>('paid_at');
  set paidAt(DateTime? value) => setField<DateTime>('paid_at', value);

  String? get transactionType => getField<String>('transaction_type');
  set transactionType(String? value) =>
      setField<String>('transaction_type', value);

  dynamic? get apiLogs => getField<dynamic>('api_logs');
  set apiLogs(dynamic? value) => setField<dynamic>('api_logs', value);
}
