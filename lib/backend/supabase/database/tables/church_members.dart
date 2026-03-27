import '../database.dart';

class ChurchMembersTable extends SupabaseTable<ChurchMembersRow> {
  @override
  String get tableName => 'church_members';

  @override
  ChurchMembersRow createRow(Map<String, dynamic> data) =>
      ChurchMembersRow(data);
}

class ChurchMembersRow extends SupabaseDataRow {
  ChurchMembersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChurchMembersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String get churchId => getField<String>('church_id')!;
  set churchId(String value) => setField<String>('church_id', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get joinedAt => getField<DateTime>('joined_at');
  set joinedAt(DateTime? value) => setField<DateTime>('joined_at', value);

  String? get firstname => getField<String>('firstname');
  set firstname(String? value) => setField<String>('firstname', value);

  String? get lastname => getField<String>('Lastname');
  set lastname(String? value) => setField<String>('Lastname', value);

  String? get phoneNumber => getField<String>('Phone number');
  set phoneNumber(String? value) => setField<String>('Phone number', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get partnership => getField<String>('partnership');
  set partnership(String? value) => setField<String>('partnership', value);

  String? get paystackCustomerCode => getField<String>('PaystackCustomerCode');
  set paystackCustomerCode(String? value) =>
      setField<String>('PaystackCustomerCode', value);

  String? get bankName => getField<String>('BankName');
  set bankName(String? value) => setField<String>('BankName', value);

  String? get accountNo => getField<String>('AccountNo');
  set accountNo(String? value) => setField<String>('AccountNo', value);

  String? get accountName => getField<String>('AccountName');
  set accountName(String? value) => setField<String>('AccountName', value);

  String? get paystackcustomerID => getField<String>('PaystackcustomerID');
  set paystackcustomerID(String? value) =>
      setField<String>('PaystackcustomerID', value);

  String? get avatar => getField<String>('avatar');
  set avatar(String? value) => setField<String>('avatar', value);
}
