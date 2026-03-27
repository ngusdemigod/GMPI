import '../database.dart';

class PartnershipPLANSTable extends SupabaseTable<PartnershipPLANSRow> {
  @override
  String get tableName => 'partnershipPLANS';

  @override
  PartnershipPLANSRow createRow(Map<String, dynamic> data) =>
      PartnershipPLANSRow(data);
}

class PartnershipPLANSRow extends SupabaseDataRow {
  PartnershipPLANSRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PartnershipPLANSTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get amountLOW => getField<int>('amountLOW');
  set amountLOW(int? value) => setField<int>('amountLOW', value);

  int? get amountHIGH => getField<int>('amountHIGH');
  set amountHIGH(int? value) => setField<int>('amountHIGH', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get churchID => getField<String>('churchID');
  set churchID(String? value) => setField<String>('churchID', value);

  bool get status => getField<bool>('status')!;
  set status(bool value) => setField<bool>('status', value);
}
