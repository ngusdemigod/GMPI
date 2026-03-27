import '../database.dart';

class RewardTypesTable extends SupabaseTable<RewardTypesRow> {
  @override
  String get tableName => 'reward_types';

  @override
  RewardTypesRow createRow(Map<String, dynamic> data) => RewardTypesRow(data);
}

class RewardTypesRow extends SupabaseDataRow {
  RewardTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RewardTypesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String get slug => getField<String>('slug')!;
  set slug(String value) => setField<String>('slug', value);

  bool get status => getField<bool>('status')!;
  set status(bool value) => setField<bool>('status', value);
}
