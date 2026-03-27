import '../database.dart';

class ChurchAdminMembersTable extends SupabaseTable<ChurchAdminMembersRow> {
  @override
  String get tableName => 'church_admin_members';

  @override
  ChurchAdminMembersRow createRow(Map<String, dynamic> data) =>
      ChurchAdminMembersRow(data);
}

class ChurchAdminMembersRow extends SupabaseDataRow {
  ChurchAdminMembersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChurchAdminMembersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get churchId => getField<String>('church_id')!;
  set churchId(String value) => setField<String>('church_id', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);
}
