import '../database.dart';

class ProjectSummaryViewTable extends SupabaseTable<ProjectSummaryViewRow> {
  @override
  String get tableName => 'project_summary_view';

  @override
  ProjectSummaryViewRow createRow(Map<String, dynamic> data) =>
      ProjectSummaryViewRow(data);
}

class ProjectSummaryViewRow extends SupabaseDataRow {
  ProjectSummaryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProjectSummaryViewTable();

  String? get projectId => getField<String>('project_id');
  set projectId(String? value) => setField<String>('project_id', value);

  String? get churchId => getField<String>('church_id');
  set churchId(String? value) => setField<String>('church_id', value);

  String? get projectTitle => getField<String>('project_title');
  set projectTitle(String? value) => setField<String>('project_title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get targetAmount => getField<double>('target_amount');
  set targetAmount(double? value) => setField<double>('target_amount', value);

  String? get projectStatus => getField<String>('project_status');
  set projectStatus(String? value) => setField<String>('project_status', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  double? get totalRaised => getField<double>('total_raised');
  set totalRaised(double? value) => setField<double>('total_raised', value);

  int? get totalDonations => getField<int>('total_donations');
  set totalDonations(int? value) => setField<int>('total_donations', value);

  double? get amountRemaining => getField<double>('amount_remaining');
  set amountRemaining(double? value) =>
      setField<double>('amount_remaining', value);

  DateTime? get lastDonationAt => getField<DateTime>('last_donation_at');
  set lastDonationAt(DateTime? value) =>
      setField<DateTime>('last_donation_at', value);
}
