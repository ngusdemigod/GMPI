// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataStruct extends BaseStruct {
  DataStruct({
    BankStruct? bank,
    String? accountName,
    String? accountNumber,
    bool? assigned,
    String? currency,
    String? metadata,
    bool? active,
    int? id,
    String? createdAt,
    String? updatedAt,
    AssignmentStruct? assignment,
    CustomerStruct? customer,
  })  : _bank = bank,
        _accountName = accountName,
        _accountNumber = accountNumber,
        _assigned = assigned,
        _currency = currency,
        _metadata = metadata,
        _active = active,
        _id = id,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _assignment = assignment,
        _customer = customer;

  // "bank" field.
  BankStruct? _bank;
  BankStruct get bank => _bank ?? BankStruct();
  set bank(BankStruct? val) => _bank = val;

  void updateBank(Function(BankStruct) updateFn) {
    updateFn(_bank ??= BankStruct());
  }

  bool hasBank() => _bank != null;

  // "account_name" field.
  String? _accountName;
  String get accountName => _accountName ?? '';
  set accountName(String? val) => _accountName = val;

  bool hasAccountName() => _accountName != null;

  // "account_number" field.
  String? _accountNumber;
  String get accountNumber => _accountNumber ?? '';
  set accountNumber(String? val) => _accountNumber = val;

  bool hasAccountNumber() => _accountNumber != null;

  // "assigned" field.
  bool? _assigned;
  bool get assigned => _assigned ?? false;
  set assigned(bool? val) => _assigned = val;

  bool hasAssigned() => _assigned != null;

  // "currency" field.
  String? _currency;
  String get currency => _currency ?? '';
  set currency(String? val) => _currency = val;

  bool hasCurrency() => _currency != null;

  // "metadata" field.
  String? _metadata;
  String get metadata => _metadata ?? '';
  set metadata(String? val) => _metadata = val;

  bool hasMetadata() => _metadata != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  set active(bool? val) => _active = val;

  bool hasActive() => _active != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "assignment" field.
  AssignmentStruct? _assignment;
  AssignmentStruct get assignment => _assignment ?? AssignmentStruct();
  set assignment(AssignmentStruct? val) => _assignment = val;

  void updateAssignment(Function(AssignmentStruct) updateFn) {
    updateFn(_assignment ??= AssignmentStruct());
  }

  bool hasAssignment() => _assignment != null;

  // "customer" field.
  CustomerStruct? _customer;
  CustomerStruct get customer => _customer ?? CustomerStruct();
  set customer(CustomerStruct? val) => _customer = val;

  void updateCustomer(Function(CustomerStruct) updateFn) {
    updateFn(_customer ??= CustomerStruct());
  }

  bool hasCustomer() => _customer != null;

  static DataStruct fromMap(Map<String, dynamic> data) => DataStruct(
        bank: data['bank'] is BankStruct
            ? data['bank']
            : BankStruct.maybeFromMap(data['bank']),
        accountName: data['account_name'] as String?,
        accountNumber: data['account_number'] as String?,
        assigned: data['assigned'] as bool?,
        currency: data['currency'] as String?,
        metadata: data['metadata'] as String?,
        active: data['active'] as bool?,
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        assignment: data['assignment'] is AssignmentStruct
            ? data['assignment']
            : AssignmentStruct.maybeFromMap(data['assignment']),
        customer: data['customer'] is CustomerStruct
            ? data['customer']
            : CustomerStruct.maybeFromMap(data['customer']),
      );

  static DataStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'bank': _bank?.toMap(),
        'account_name': _accountName,
        'account_number': _accountNumber,
        'assigned': _assigned,
        'currency': _currency,
        'metadata': _metadata,
        'active': _active,
        'id': _id,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'assignment': _assignment?.toMap(),
        'customer': _customer?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'bank': serializeParam(
          _bank,
          ParamType.DataStruct,
        ),
        'account_name': serializeParam(
          _accountName,
          ParamType.String,
        ),
        'account_number': serializeParam(
          _accountNumber,
          ParamType.String,
        ),
        'assigned': serializeParam(
          _assigned,
          ParamType.bool,
        ),
        'currency': serializeParam(
          _currency,
          ParamType.String,
        ),
        'metadata': serializeParam(
          _metadata,
          ParamType.String,
        ),
        'active': serializeParam(
          _active,
          ParamType.bool,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'assignment': serializeParam(
          _assignment,
          ParamType.DataStruct,
        ),
        'customer': serializeParam(
          _customer,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static DataStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataStruct(
        bank: deserializeStructParam(
          data['bank'],
          ParamType.DataStruct,
          false,
          structBuilder: BankStruct.fromSerializableMap,
        ),
        accountName: deserializeParam(
          data['account_name'],
          ParamType.String,
          false,
        ),
        accountNumber: deserializeParam(
          data['account_number'],
          ParamType.String,
          false,
        ),
        assigned: deserializeParam(
          data['assigned'],
          ParamType.bool,
          false,
        ),
        currency: deserializeParam(
          data['currency'],
          ParamType.String,
          false,
        ),
        metadata: deserializeParam(
          data['metadata'],
          ParamType.String,
          false,
        ),
        active: deserializeParam(
          data['active'],
          ParamType.bool,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        assignment: deserializeStructParam(
          data['assignment'],
          ParamType.DataStruct,
          false,
          structBuilder: AssignmentStruct.fromSerializableMap,
        ),
        customer: deserializeStructParam(
          data['customer'],
          ParamType.DataStruct,
          false,
          structBuilder: CustomerStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataStruct &&
        bank == other.bank &&
        accountName == other.accountName &&
        accountNumber == other.accountNumber &&
        assigned == other.assigned &&
        currency == other.currency &&
        metadata == other.metadata &&
        active == other.active &&
        id == other.id &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        assignment == other.assignment &&
        customer == other.customer;
  }

  @override
  int get hashCode => const ListEquality().hash([
        bank,
        accountName,
        accountNumber,
        assigned,
        currency,
        metadata,
        active,
        id,
        createdAt,
        updatedAt,
        assignment,
        customer
      ]);
}

DataStruct createDataStruct({
  BankStruct? bank,
  String? accountName,
  String? accountNumber,
  bool? assigned,
  String? currency,
  String? metadata,
  bool? active,
  int? id,
  String? createdAt,
  String? updatedAt,
  AssignmentStruct? assignment,
  CustomerStruct? customer,
}) =>
    DataStruct(
      bank: bank ?? BankStruct(),
      accountName: accountName,
      accountNumber: accountNumber,
      assigned: assigned,
      currency: currency,
      metadata: metadata,
      active: active,
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      assignment: assignment ?? AssignmentStruct(),
      customer: customer ?? CustomerStruct(),
    );
