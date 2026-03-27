// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaystackStruct extends BaseStruct {
  PaystackStruct({
    CustomerdataStruct? customerdata,
    DedicatedAccountStruct? dedicatedAccount,
  })  : _customerdata = customerdata,
        _dedicatedAccount = dedicatedAccount;

  // "customerdata" field.
  CustomerdataStruct? _customerdata;
  CustomerdataStruct get customerdata => _customerdata ?? CustomerdataStruct();
  set customerdata(CustomerdataStruct? val) => _customerdata = val;

  void updateCustomerdata(Function(CustomerdataStruct) updateFn) {
    updateFn(_customerdata ??= CustomerdataStruct());
  }

  bool hasCustomerdata() => _customerdata != null;

  // "dedicated_account" field.
  DedicatedAccountStruct? _dedicatedAccount;
  DedicatedAccountStruct get dedicatedAccount =>
      _dedicatedAccount ?? DedicatedAccountStruct();
  set dedicatedAccount(DedicatedAccountStruct? val) => _dedicatedAccount = val;

  void updateDedicatedAccount(Function(DedicatedAccountStruct) updateFn) {
    updateFn(_dedicatedAccount ??= DedicatedAccountStruct());
  }

  bool hasDedicatedAccount() => _dedicatedAccount != null;

  static PaystackStruct fromMap(Map<String, dynamic> data) => PaystackStruct(
        customerdata: data['customerdata'] is CustomerdataStruct
            ? data['customerdata']
            : CustomerdataStruct.maybeFromMap(data['customerdata']),
        dedicatedAccount: data['dedicated_account'] is DedicatedAccountStruct
            ? data['dedicated_account']
            : DedicatedAccountStruct.maybeFromMap(data['dedicated_account']),
      );

  static PaystackStruct? maybeFromMap(dynamic data) =>
      data is Map ? PaystackStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'customerdata': _customerdata?.toMap(),
        'dedicated_account': _dedicatedAccount?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'customerdata': serializeParam(
          _customerdata,
          ParamType.DataStruct,
        ),
        'dedicated_account': serializeParam(
          _dedicatedAccount,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PaystackStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaystackStruct(
        customerdata: deserializeStructParam(
          data['customerdata'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerdataStruct.fromSerializableMap,
        ),
        dedicatedAccount: deserializeStructParam(
          data['dedicated_account'],
          ParamType.DataStruct,
          false,
          structBuilder: DedicatedAccountStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PaystackStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaystackStruct &&
        customerdata == other.customerdata &&
        dedicatedAccount == other.dedicatedAccount;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([customerdata, dedicatedAccount]);
}

PaystackStruct createPaystackStruct({
  CustomerdataStruct? customerdata,
  DedicatedAccountStruct? dedicatedAccount,
}) =>
    PaystackStruct(
      customerdata: customerdata ?? CustomerdataStruct(),
      dedicatedAccount: dedicatedAccount ?? DedicatedAccountStruct(),
    );
