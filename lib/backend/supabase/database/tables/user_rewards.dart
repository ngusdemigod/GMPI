import '../database.dart';

class UserRewardsTable extends SupabaseTable<UserRewardsRow> {
  @override
  String get tableName => 'user_rewards';

  @override
  UserRewardsRow createRow(Map<String, dynamic> data) => UserRewardsRow(data);
}

class UserRewardsRow extends SupabaseDataRow {
  UserRewardsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserRewardsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get rewardId => getField<String>('reward_id')!;
  set rewardId(String value) => setField<String>('reward_id', value);

  bool get isOpened => getField<bool>('is_opened')!;
  set isOpened(bool value) => setField<bool>('is_opened', value);

  DateTime? get openedAt => getField<DateTime>('opened_at');
  set openedAt(DateTime? value) => setField<DateTime>('opened_at', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get churchId => getField<String>('church_id')!;
  set churchId(String value) => setField<String>('church_id', value);

  DateTime? get viewedAt => getField<DateTime>('viewed_at');
  set viewedAt(DateTime? value) => setField<DateTime>('viewed_at', value);
}
