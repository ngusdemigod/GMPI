import '../database.dart';

class VMyRoleTable extends SupabaseTable<VMyRoleRow> {
  @override
  String get tableName => 'v_my_role';

  @override
  VMyRoleRow createRow(Map<String, dynamic> data) => VMyRoleRow(data);
}

class VMyRoleRow extends SupabaseDataRow {
  VMyRoleRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VMyRoleTable();

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);
}
