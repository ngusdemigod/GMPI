import '../database.dart';

class TransactionsProjectViewTable
    extends SupabaseTable<TransactionsProjectViewRow> {
  @override
  String get tableName => 'transactions_project_view';

  @override
  TransactionsProjectViewRow createRow(Map<String, dynamic> data) =>
      TransactionsProjectViewRow(data);
}

class TransactionsProjectViewRow extends SupabaseDataRow {
  TransactionsProjectViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TransactionsProjectViewTable();

  String? get transactionId => getField<String>('transaction_id');
  set transactionId(String? value) => setField<String>('transaction_id', value);

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

  String? get transactionStatus => getField<String>('transaction_status');
  set transactionStatus(String? value) =>
      setField<String>('transaction_status', value);

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

  String? get memberFullName => getField<String>('member_full_name');
  set memberFullName(String? value) =>
      setField<String>('member_full_name', value);

  String? get memberEmail => getField<String>('member_email');
  set memberEmail(String? value) => setField<String>('member_email', value);

  String? get projectTitle => getField<String>('project_title');
  set projectTitle(String? value) => setField<String>('project_title', value);

  String? get projectDescription => getField<String>('project_description');
  set projectDescription(String? value) =>
      setField<String>('project_description', value);

  double? get projectTargetAmount => getField<double>('project_target_amount');
  set projectTargetAmount(double? value) =>
      setField<double>('project_target_amount', value);

  DateTime? get projectStartDate => getField<DateTime>('project_start_date');
  set projectStartDate(DateTime? value) =>
      setField<DateTime>('project_start_date', value);

  DateTime? get projectEndDate => getField<DateTime>('project_end_date');
  set projectEndDate(DateTime? value) =>
      setField<DateTime>('project_end_date', value);

  String? get projectStatus => getField<String>('project_status');
  set projectStatus(String? value) => setField<String>('project_status', value);

  String? get projectCreatedBy => getField<String>('project_created_by');
  set projectCreatedBy(String? value) =>
      setField<String>('project_created_by', value);

  DateTime? get projectCreatedAt => getField<DateTime>('project_created_at');
  set projectCreatedAt(DateTime? value) =>
      setField<DateTime>('project_created_at', value);

  String? get projectFeaturedImage =>
      getField<String>('project_featured_image');
  set projectFeaturedImage(String? value) =>
      setField<String>('project_featured_image', value);
}
