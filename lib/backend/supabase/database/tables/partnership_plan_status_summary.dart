import '../database.dart';

class PartnershipPlanStatusSummaryTable
    extends SupabaseTable<PartnershipPlanStatusSummaryRow> {
  @override
  String get tableName => 'partnership_plan_status_summary';

  @override
  PartnershipPlanStatusSummaryRow createRow(Map<String, dynamic> data) =>
      PartnershipPlanStatusSummaryRow(data);
}

class PartnershipPlanStatusSummaryRow extends SupabaseDataRow {
  PartnershipPlanStatusSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PartnershipPlanStatusSummaryTable();

  String? get partnershipPlanId => getField<String>('partnership_plan_id');
  set partnershipPlanId(String? value) =>
      setField<String>('partnership_plan_id', value);

  String? get planTitle => getField<String>('plan_title');
  set planTitle(String? value) => setField<String>('plan_title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get amountLOW => getField<int>('amountLOW');
  set amountLOW(int? value) => setField<int>('amountLOW', value);

  int? get amountHIGH => getField<int>('amountHIGH');
  set amountHIGH(int? value) => setField<int>('amountHIGH', value);

  String? get churchID => getField<String>('churchID');
  set churchID(String? value) => setField<String>('churchID', value);

  int? get totalSubscribers => getField<int>('total_subscribers');
  set totalSubscribers(int? value) => setField<int>('total_subscribers', value);

  int? get activeSubscribers => getField<int>('active_subscribers');
  set activeSubscribers(int? value) =>
      setField<int>('active_subscribers', value);

  int? get pendingSubscribers => getField<int>('pending_subscribers');
  set pendingSubscribers(int? value) =>
      setField<int>('pending_subscribers', value);

  int? get pastDueSubscribers => getField<int>('past_due_subscribers');
  set pastDueSubscribers(int? value) =>
      setField<int>('past_due_subscribers', value);

  int? get cancelledSubscribers => getField<int>('cancelled_subscribers');
  set cancelledSubscribers(int? value) =>
      setField<int>('cancelled_subscribers', value);

  int? get confirmingSubscribers => getField<int>('confirming_subscribers');
  set confirmingSubscribers(int? value) =>
      setField<int>('confirming_subscribers', value);

  DateTime? get firstSubscriptionAt =>
      getField<DateTime>('first_subscription_at');
  set firstSubscriptionAt(DateTime? value) =>
      setField<DateTime>('first_subscription_at', value);

  DateTime? get latestSubscriptionAt =>
      getField<DateTime>('latest_subscription_at');
  set latestSubscriptionAt(DateTime? value) =>
      setField<DateTime>('latest_subscription_at', value);
}
