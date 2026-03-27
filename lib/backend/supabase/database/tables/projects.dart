import '../database.dart';

class ProjectsTable extends SupabaseTable<ProjectsRow> {
  @override
  String get tableName => 'projects';

  @override
  ProjectsRow createRow(Map<String, dynamic> data) => ProjectsRow(data);
}

class ProjectsRow extends SupabaseDataRow {
  ProjectsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProjectsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get churchId => getField<String>('church_id');
  set churchId(String? value) => setField<String>('church_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get targetAmount => getField<double>('target_amount');
  set targetAmount(double? value) => setField<double>('target_amount', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get featuredImage => getField<String>('featured image');
  set featuredImage(String? value) => setField<String>('featured image', value);

  String? get currency => getField<String>('currency');
  set currency(String? value) => setField<String>('currency', value);

  DateTime? get modAt => getField<DateTime>('mod_at');
  set modAt(DateTime? value) => setField<DateTime>('mod_at', value);
}
