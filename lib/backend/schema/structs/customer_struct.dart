// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CustomerStruct extends BaseStruct {
  CustomerStruct({
    int? id,
    String? firstName,
    String? lastName,
    String? email,
    String? customerCode,
    String? phone,
    MetadataStruct? metadata,
    String? riskAction,
    String? internationalFormatPhone,
  })  : _id = id,
        _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _customerCode = customerCode,
        _phone = phone,
        _metadata = metadata,
        _riskAction = riskAction,
        _internationalFormatPhone = internationalFormatPhone;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

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

  // "customer_code" field.
  String? _customerCode;
  String get customerCode => _customerCode ?? '';
  set customerCode(String? val) => _customerCode = val;

  bool hasCustomerCode() => _customerCode != null;

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

  // "risk_action" field.
  String? _riskAction;
  String get riskAction => _riskAction ?? '';
  set riskAction(String? val) => _riskAction = val;

  bool hasRiskAction() => _riskAction != null;

  // "international_format_phone" field.
  String? _internationalFormatPhone;
  String get internationalFormatPhone => _internationalFormatPhone ?? '';
  set internationalFormatPhone(String? val) => _internationalFormatPhone = val;

  bool hasInternationalFormatPhone() => _internationalFormatPhone != null;

  static CustomerStruct fromMap(Map<String, dynamic> data) => CustomerStruct(
        id: castToType<int>(data['id']),
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        email: data['email'] as String?,
        customerCode: data['customer_code'] as String?,
        phone: data['phone'] as String?,
        metadata: data['metadata'] is MetadataStruct
            ? data['metadata']
            : MetadataStruct.maybeFromMap(data['metadata']),
        riskAction: data['risk_action'] as String?,
        internationalFormatPhone: data['international_format_phone'] as String?,
      );

  static CustomerStruct? maybeFromMap(dynamic data) =>
      data is Map ? CustomerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'first_name': _firstName,
        'last_name': _lastName,
        'email': _email,
        'customer_code': _customerCode,
        'phone': _phone,
        'metadata': _metadata?.toMap(),
        'risk_action': _riskAction,
        'international_format_phone': _internationalFormatPhone,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
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
        'customer_code': serializeParam(
          _customerCode,
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
        'risk_action': serializeParam(
          _riskAction,
          ParamType.String,
        ),
        'international_format_phone': serializeParam(
          _internationalFormatPhone,
          ParamType.String,
        ),
      }.withoutNulls;

  static CustomerStruct fromSerializableMap(Map<String, dynamic> data) =>
      CustomerStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
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
        customerCode: deserializeParam(
          data['customer_code'],
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
        riskAction: deserializeParam(
          data['risk_action'],
          ParamType.String,
          false,
        ),
        internationalFormatPhone: deserializeParam(
          data['international_format_phone'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CustomerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CustomerStruct &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        customerCode == other.customerCode &&
        phone == other.phone &&
        metadata == other.metadata &&
        riskAction == other.riskAction &&
        internationalFormatPhone == other.internationalFormatPhone;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        firstName,
        lastName,
        email,
        customerCode,
        phone,
        metadata,
        riskAction,
        internationalFormatPhone
      ]);
}

CustomerStruct createCustomerStruct({
  int? id,
  String? firstName,
  String? lastName,
  String? email,
  String? customerCode,
  String? phone,
  MetadataStruct? metadata,
  String? riskAction,
  String? internationalFormatPhone,
}) =>
    CustomerStruct(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      customerCode: customerCode,
      phone: phone,
      metadata: metadata ?? MetadataStruct(),
      riskAction: riskAction,
      internationalFormatPhone: internationalFormatPhone,
    );
