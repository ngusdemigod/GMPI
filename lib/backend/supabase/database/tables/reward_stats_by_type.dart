import '../database.dart';

class RewardStatsByTypeTable extends SupabaseTable<RewardStatsByTypeRow> {
  @override
  String get tableName => 'reward_stats_by_type';

  @override
  RewardStatsByTypeRow createRow(Map<String, dynamic> data) =>
      RewardStatsByTypeRow(data);
}

class RewardStatsByTypeRow extends SupabaseDataRow {
  RewardStatsByTypeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RewardStatsByTypeTable();

  String? get rewardType => getField<String>('reward_type');
  set rewardType(String? value) => setField<String>('reward_type', value);

  int? get totalRewards => getField<int>('total_rewards');
  set totalRewards(int? value) => setField<int>('total_rewards', value);

  int? get totalAssigned => getField<int>('total_assigned');
  set totalAssigned(int? value) => setField<int>('total_assigned', value);

  int? get totalViewed => getField<int>('total_viewed');
  set totalViewed(int? value) => setField<int>('total_viewed', value);

  int? get totalOpened => getField<int>('total_opened');
  set totalOpened(int? value) => setField<int>('total_opened', value);

  DateTime? get lastViewedAt => getField<DateTime>('last_viewed_at');
  set lastViewedAt(DateTime? value) =>
      setField<DateTime>('last_viewed_at', value);

  double? get viewRate => getField<double>('view_rate');
  set viewRate(double? value) => setField<double>('view_rate', value);

  double? get openRate => getField<double>('open_rate');
  set openRate(double? value) => setField<double>('open_rate', value);
}
