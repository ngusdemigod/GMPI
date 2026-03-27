import '../database.dart';

class ChurchesTable extends SupabaseTable<ChurchesRow> {
  @override
  String get tableName => 'churches';

  @override
  ChurchesRow createRow(Map<String, dynamic> data) => ChurchesRow(data);
}

class ChurchesRow extends SupabaseDataRow {
  ChurchesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChurchesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get slug => getField<String>('slug')!;
  set slug(String value) => setField<String>('slug', value);

  String? get logoUrl => getField<String>('logo_url');
  set logoUrl(String? value) => setField<String>('logo_url', value);

  String? get currency => getField<String>('currency');
  set currency(String? value) => setField<String>('currency', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get contactlink => getField<String>('contactlink');
  set contactlink(String? value) => setField<String>('contactlink', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
