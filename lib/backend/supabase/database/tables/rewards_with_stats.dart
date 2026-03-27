import '../database.dart';

class RewardsWithStatsTable extends SupabaseTable<RewardsWithStatsRow> {
  @override
  String get tableName => 'rewards_with_stats';

  @override
  RewardsWithStatsRow createRow(Map<String, dynamic> data) =>
      RewardsWithStatsRow(data);
}

class RewardsWithStatsRow extends SupabaseDataRow {
  RewardsWithStatsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RewardsWithStatsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get rewardType => getField<String>('reward_type');
  set rewardType(String? value) => setField<String>('reward_type', value);

  dynamic? get payload => getField<dynamic>('payload');
  set payload(dynamic? value) => setField<dynamic>('payload', value);

  String? get featuredImageUrl => getField<String>('featured_image_url');
  set featuredImageUrl(String? value) =>
      setField<String>('featured_image_url', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool? get hasMedia => getField<bool>('has_media');
  set hasMedia(bool? value) => setField<bool>('has_media', value);

  String? get attachmentUrl => getField<String>('attachment_url');
  set attachmentUrl(String? value) => setField<String>('attachment_url', value);

  String? get churchId => getField<String>('church_id');
  set churchId(String? value) => setField<String>('church_id', value);

  String? get creatorName => getField<String>('creator_name');
  set creatorName(String? value) => setField<String>('creator_name', value);

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
