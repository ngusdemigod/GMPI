import '../database.dart';

class RewardSummaryViewTable extends SupabaseTable<RewardSummaryViewRow> {
  @override
  String get tableName => 'reward_summary_view';

  @override
  RewardSummaryViewRow createRow(Map<String, dynamic> data) =>
      RewardSummaryViewRow(data);
}

class RewardSummaryViewRow extends SupabaseDataRow {
  RewardSummaryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RewardSummaryViewTable();

  String? get rewardId => getField<String>('reward_id');
  set rewardId(String? value) => setField<String>('reward_id', value);

  String? get churchId => getField<String>('church_id');
  set churchId(String? value) => setField<String>('church_id', value);

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

  bool? get hasMedia => getField<bool>('has_media');
  set hasMedia(bool? value) => setField<bool>('has_media', value);

  String? get attachmentUrl => getField<String>('attachment_url');
  set attachmentUrl(String? value) => setField<String>('attachment_url', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get rewardCreatedAt => getField<DateTime>('reward_created_at');
  set rewardCreatedAt(DateTime? value) =>
      setField<DateTime>('reward_created_at', value);

  String? get userRewardId => getField<String>('user_reward_id');
  set userRewardId(String? value) => setField<String>('user_reward_id', value);

  bool? get isOpened => getField<bool>('is_opened');
  set isOpened(bool? value) => setField<bool>('is_opened', value);

  bool? get hasIntent => getField<bool>('has_intent');
  set hasIntent(bool? value) => setField<bool>('has_intent', value);
}
