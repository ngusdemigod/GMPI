// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BankStruct extends BaseStruct {
  BankStruct({
    String? bankname,
    String? accountname,
    String? accountnumber,
    int? bankid,
  })  : _bankname = bankname,
        _accountname = accountname,
        _accountnumber = accountnumber,
        _bankid = bankid;

  // "Bankname" field.
  String? _bankname;
  String get bankname => _bankname ?? '';
  set bankname(String? val) => _bankname = val;

  bool hasBankname() => _bankname != null;

  // "Accountname" field.
  String? _accountname;
  String get accountname => _accountname ?? '';
  set accountname(String? val) => _accountname = val;

  bool hasAccountname() => _accountname != null;

  // "Accountnumber" field.
  String? _accountnumber;
  String get accountnumber => _accountnumber ?? '';
  set accountnumber(String? val) => _accountnumber = val;

  bool hasAccountnumber() => _accountnumber != null;

  // "bankid" field.
  int? _bankid;
  int get bankid => _bankid ?? 0;
  set bankid(int? val) => _bankid = val;

  void incrementBankid(int amount) => bankid = bankid + amount;

  bool hasBankid() => _bankid != null;

  static BankStruct fromMap(Map<String, dynamic> data) => BankStruct(
        bankname: data['Bankname'] as String?,
        accountname: data['Accountname'] as String?,
        accountnumber: data['Accountnumber'] as String?,
        bankid: castToType<int>(data['bankid']),
      );

  static BankStruct? maybeFromMap(dynamic data) =>
      data is Map ? BankStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Bankname': _bankname,
        'Accountname': _accountname,
        'Accountnumber': _accountnumber,
        'bankid': _bankid,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Bankname': serializeParam(
          _bankname,
          ParamType.String,
        ),
        'Accountname': serializeParam(
          _accountname,
          ParamType.String,
        ),
        'Accountnumber': serializeParam(
          _accountnumber,
          ParamType.String,
        ),
        'bankid': serializeParam(
          _bankid,
          ParamType.int,
        ),
      }.withoutNulls;

  static BankStruct fromSerializableMap(Map<String, dynamic> data) =>
      BankStruct(
        bankname: deserializeParam(
          data['Bankname'],
          ParamType.String,
          false,
        ),
        accountname: deserializeParam(
          data['Accountname'],
          ParamType.String,
          false,
        ),
        accountnumber: deserializeParam(
          data['Accountnumber'],
          ParamType.String,
          false,
        ),
        bankid: deserializeParam(
          data['bankid'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BankStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BankStruct &&
        bankname == other.bankname &&
        accountname == other.accountname &&
        accountnumber == other.accountnumber &&
        bankid == other.bankid;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([bankname, accountname, accountnumber, bankid]);
}

BankStruct createBankStruct({
  String? bankname,
  String? accountname,
  String? accountnumber,
  int? bankid,
}) =>
    BankStruct(
      bankname: bankname,
      accountname: accountname,
      accountnumber: accountnumber,
      bankid: bankid,
    );
