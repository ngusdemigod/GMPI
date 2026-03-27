import '../database.dart';

class RewardsTable extends SupabaseTable<RewardsRow> {
  @override
  String get tableName => 'rewards';

  @override
  RewardsRow createRow(Map<String, dynamic> data) => RewardsRow(data);
}

class RewardsRow extends SupabaseDataRow {
  RewardsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RewardsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String get rewardType => getField<String>('reward_type')!;
  set rewardType(String value) => setField<String>('reward_type', value);

  dynamic? get payload => getField<dynamic>('payload');
  set payload(dynamic? value) => setField<dynamic>('payload', value);

  String? get featuredImageUrl => getField<String>('featured_image_url');
  set featuredImageUrl(String? value) =>
      setField<String>('featured_image_url', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool? get hasMedia => getField<bool>('has_media');
  set hasMedia(bool? value) => setField<bool>('has_media', value);

  String? get attachmentPath => getField<String>('attachment_path');
  set attachmentPath(String? value) =>
      setField<String>('attachment_path', value);

  String get churchId => getField<String>('church_id')!;
  set churchId(String value) => setField<String>('church_id', value);

  String get creatorName => getField<String>('creator_name')!;
  set creatorName(String value) => setField<String>('creator_name', value);

  List<String> get rewarditems => getListField<String>('rewarditems');
  set rewarditems(List<String>? value) =>
      setListField<String>('rewarditems', value);
}
