// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerdataStruct extends BaseStruct {
  CustomerdataStruct({
    List<String>? transactions,
    List<String>? subscriptions,
    List<String>? authorizations,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    MetadataStruct? metadata,
    String? domain,
    String? customerCode,
    String? riskAction,
    int? id,
    int? integration,
    String? createdAt,
    String? updatedAt,
    bool? identified,
    String? identifications,
  })  : _transactions = transactions,
        _subscriptions = subscriptions,
        _authorizations = authorizations,
        _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _phone = phone,
        _metadata = metadata,
        _domain = domain,
        _customerCode = customerCode,
        _riskAction = riskAction,
        _id = id,
        _integration = integration,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _identified = identified,
        _identifications = identifications;

  // "transactions" field.
  List<String>? _transactions;
  List<String> get transactions => _transactions ?? const [];
  set transactions(List<String>? val) => _transactions = val;

  void updateTransactions(Function(List<String>) updateFn) {
    updateFn(_transactions ??= []);
  }

  bool hasTransactions() => _transactions != null;

  // "subscriptions" field.
  List<String>? _subscriptions;
  List<String> get subscriptions => _subscriptions ?? const [];
  set subscriptions(List<String>? val) => _subscriptions = val;

  void updateSubscriptions(Function(List<String>) updateFn) {
    updateFn(_subscriptions ??= []);
  }

  bool hasSubscriptions() => _subscriptions != null;

  // "authorizations" field.
  List<String>? _authorizations;
  List<String> get authorizations => _authorizations ?? const [];
  set authorizations(List<String>? val) => _authorizations = val;

  void updateAuthorizations(Function(List<String>) updateFn) {
    updateFn(_authorizations ??= []);
  }

  bool hasAuthorizations() => _authorizations != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "metadata" field.
  MetadataStruct? _metadata;
  MetadataStruct get metadata => _metadata ?? MetadataStruct();
  set metadata(MetadataStruct? val) => _metadata = val;

  void updateMetadata(Function(MetadataStruct) updateFn) {
    updateFn(_metadata ??= MetadataStruct());
  }

  bool hasMetadata() => _metadata != null;

  // "domain" field.
  String? _domain;
  String get domain => _domain ?? '';
  set domain(String? val) => _domain = val;

  bool hasDomain() => _domain != null;

  // "customer_code" field.
  String? _customerCode;
  String get customerCode => _customerCode ?? '';
  set customerCode(String? val) => _customerCode = val;

  bool hasCustomerCode() => _customerCode != null;

  // "risk_action" field.
  String? _riskAction;
  String get riskAction => _riskAction ?? '';
  set riskAction(String? val) => _riskAction = val;

  bool hasRiskAction() => _riskAction != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "integration" field.
  int? _integration;
  int get integration => _integration ?? 0;
  set integration(int? val) => _integration = val;

  void incrementIntegration(int amount) => integration = integration + amount;

  bool hasIntegration() => _integration != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "identified" field.
  bool? _identified;
  bool get identified => _identified ?? false;
  set identified(bool? val) => _identified = val;

  bool hasIdentified() => _identified != null;

  // "identifications" field.
  String? _identifications;
  String get identifications => _identifications ?? '';
  set identifications(String? val) => _identifications = val;

  bool hasIdentifications() => _identifications != null;

  static CustomerdataStruct fromMap(Map<String, dynamic> data) =>
      CustomerdataStruct(
        transactions: getDataList(data['transactions']),
        subscriptions: getDataList(data['subscriptions']),
        authorizations: getDataList(data['authorizations']),
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        email: data['email'] as String?,
        phone: data['phone'] as String?,
        metadata: data['metadata'] is MetadataStruct
            ? data['metadata']
            : MetadataStruct.maybeFromMap(data['metadata']),
        domain: data['domain'] as String?,
        customerCode: data['customer_code'] as String?,
        riskAction: data['risk_action'] as String?,
        id: castToType<int>(data['id']),
        integration: castToType<int>(data['integration']),
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
        identified: data['identified'] as bool?,
        identifications: data['identifications'] as String?,
      );

  static CustomerdataStruct? maybeFromMap(dynamic data) => data is Map
      ? CustomerdataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'transactions': _transactions,
        'subscriptions': _subscriptions,
        'authorizations': _authorizations,
        'first_name': _firstName,
        'last_name': _lastName,
        'email': _email,
        'phone': _phone,
        'metadata': _metadata?.toMap(),
        'domain': _domain,
        'customer_code': _customerCode,
        'risk_action': _riskAction,
        'id': _id,
        'integration': _integration,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'identified': _identified,
        'identifications': _identifications,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'transactions': serializeParam(
          _transactions,
          ParamType.String,
          isList: true,
        ),
        'subscriptions': serializeParam(
          _subscriptions,
          ParamType.String,
          isList: true,
        ),
        'authorizations': serializeParam(
          _authorizations,
          ParamType.String,
          isList: true,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'metadata': serializeParam(
          _metadata,
          ParamType.DataStruct,
        ),
        'domain': serializeParam(
          _domain,
          ParamType.String,
        ),
        'customer_code': serializeParam(
          _customerCode,
          ParamType.String,
        ),
        'risk_action': serializeParam(
          _riskAction,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'integration': serializeParam(
          _integration,
          ParamType.int,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'identified': serializeParam(
          _identified,
          ParamType.bool,
        ),
        'identifications': serializeParam(
          _identifications,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustomerdataStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerdataStruct(
        transactions: deserializeParam<String>(
          data['transactions'],
          ParamType.String,
          true,
        ),
        subscriptions: deserializeParam<String>(
          data['subscriptions'],
          ParamType.String,
          true,
        ),
        authorizations: deserializeParam<String>(
          data['authorizations'],
          ParamType.String,
          true,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        metadata: deserializeStructParam(
          data['metadata'],
          ParamType.DataStruct,
          false,
          structBuilder: MetadataStruct.fromSerializableMap,
        ),
        domain: deserializeParam(
          data['domain'],
          ParamType.String,
          false,
        ),
        customerCode: deserializeParam(
          data['customer_code'],
          ParamType.String,
          false,
        ),
        riskAction: deserializeParam(
          data['risk_action'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        integration: deserializeParam(
          data['integration'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.String,
          false,
        ),
        identified: deserializeParam(
          data['identified'],
          ParamType.bool,
          false,
        ),
        identifications: deserializeParam(
          data['identifications'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustomerdataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CustomerdataStruct &&
        listEquality.equals(transactions, other.transactions) &&
        listEquality.equals(subscriptions, other.subscriptions) &&
        listEquality.equals(authorizations, other.authorizations) &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        phone == other.phone &&
        metadata == other.metadata &&
        domain == other.domain &&
        customerCode == other.customerCode &&
        riskAction == other.riskAction &&
        id == other.id &&
        integration == other.integration &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        identified == other.identified &&
        identifications == other.identifications;
  }

  @override
  int get hashCode => const ListEquality().hash([
        transactions,
        subscriptions,
        authorizations,
        firstName,
        lastName,
        email,
        phone,
        metadata,
        domain,
        customerCode,
        riskAction,
        id,
        integration,
        createdAt,
        updatedAt,
        identified,
        identifications
      ]);
}

CustomerdataStruct createCustomerdataStruct({
  String? firstName,
  String? lastName,
  String? email,
  String? phone,
  MetadataStruct? metadata,
  String? domain,
  String? customerCode,
  String? riskAction,
  int? id,
  int? integration,
  String? createdAt,
  String? updatedAt,
  bool? identified,
  String? identifications,
}) =>
    CustomerdataStruct(
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      metadata: metadata ?? MetadataStruct(),
      domain: domain,
      customerCode: customerCode,
      riskAction: riskAction,
      id: id,
      integration: integration,
      createdAt: createdAt,
      updatedAt: updatedAt,
      identified: identified,
      identifications: identifications,
    );
