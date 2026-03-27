import '../database.dart';

class RewardsStatsThisMonthTable
    extends SupabaseTable<RewardsStatsThisMonthRow> {
  @override
  String get tableName => 'rewards_stats_this_month';

  @override
  RewardsStatsThisMonthRow createRow(Map<String, dynamic> data) =>
      RewardsStatsThisMonthRow(data);
}

class RewardsStatsThisMonthRow extends SupabaseDataRow {
  RewardsStatsThisMonthRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RewardsStatsThisMonthTable();

  DateTime? get dayDate => getField<DateTime>('day_date');
  set dayDate(DateTime? value) => setField<DateTime>('day_date', value);

  int? get dayNum => getField<int>('day_num');
  set dayNum(int? value) => setField<int>('day_num', value);

  int? get totalAssigned => getField<int>('total_assigned');
  set totalAssigned(int? value) => setField<int>('total_assigned', value);

  int? get totalViewed => getField<int>('total_viewed');
  set totalViewed(int? value) => setField<int>('total_viewed', value);

  int? get totalOpened => getField<int>('total_opened');
  set totalOpened(int? value) => setField<int>('total_opened', value);

  double? get viewRate => getField<double>('view_rate');
  set viewRate(double? value) => setField<double>('view_rate', value);

  double? get openRate => getField<double>('open_rate');
  set openRate(double? value) => setField<double>('open_rate', value);
}
