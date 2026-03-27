import '../database.dart';

class ChurchSummaryViewTable extends SupabaseTable<ChurchSummaryViewRow> {
  @override
  String get tableName => 'church_summary_view';

  @override
  ChurchSummaryViewRow createRow(Map<String, dynamic> data) =>
      ChurchSummaryViewRow(data);
}

class ChurchSummaryViewRow extends SupabaseDataRow {
  ChurchSummaryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChurchSummaryViewTable();

  String? get churchId => getField<String>('church_id');
  set churchId(String? value) => setField<String>('church_id', value);

  String? get churchCurrency => getField<String>('church_currency');
  set churchCurrency(String? value) =>
      setField<String>('church_currency', value);

  int? get totalProjects => getField<int>('total_projects');
  set totalProjects(int? value) => setField<int>('total_projects', value);

  double? get totalTargetAmount => getField<double>('total_target_amount');
  set totalTargetAmount(double? value) =>
      setField<double>('total_target_amount', value);

  double? get totalRaised => getField<double>('total_raised');
  set totalRaised(double? value) => setField<double>('total_raised', value);

  double? get totalDonations => getField<double>('total_donations');
  set totalDonations(double? value) =>
      setField<double>('total_donations', value);

  double? get totalAmountRemaining =>
      getField<double>('total_amount_remaining');
  set totalAmountRemaining(double? value) =>
      setField<double>('total_amount_remaining', value);
}
