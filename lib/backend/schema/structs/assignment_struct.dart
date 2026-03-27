// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssignmentStruct extends BaseStruct {
  AssignmentStruct({
    int? integration,
    int? assigneeId,
    String? assigneeType,
    bool? expired,
    String? accountType,
    String? assignedAt,
    String? expiredAt,
    String? assignmentExpiresAt,
  })  : _integration = integration,
        _assigneeId = assigneeId,
        _assigneeType = assigneeType,
        _expired = expired,
        _accountType = accountType,
        _assignedAt = assignedAt,
        _expiredAt = expiredAt,
        _assignmentExpiresAt = assignmentExpiresAt;

  // "integration" field.
  int? _integration;
  int get integration => _integration ?? 0;
  set integration(int? val) => _integration = val;

  void incrementIntegration(int amount) => integration = integration + amount;

  bool hasIntegration() => _integration != null;

  // "assignee_id" field.
  int? _assigneeId;
  int get assigneeId => _assigneeId ?? 0;
  set assigneeId(int? val) => _assigneeId = val;

  void incrementAssigneeId(int amount) => assigneeId = assigneeId + amount;

  bool hasAssigneeId() => _assigneeId != null;

  // "assignee_type" field.
  String? _assigneeType;
  String get assigneeType => _assigneeType ?? '';
  set assigneeType(String? val) => _assigneeType = val;

  bool hasAssigneeType() => _assigneeType != null;

  // "expired" field.
  bool? _expired;
  bool get expired => _expired ?? false;
  set expired(bool? val) => _expired = val;

  bool hasExpired() => _expired != null;

  // "account_type" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  set accountType(String? val) => _accountType = val;

  bool hasAccountType() => _accountType != null;

  // "assigned_at" field.
  String? _assignedAt;
  String get assignedAt => _assignedAt ?? '';
  set assignedAt(String? val) => _assignedAt = val;

  bool hasAssignedAt() => _assignedAt != null;

  // "expired_at" field.
  String? _expiredAt;
  String get expiredAt => _expiredAt ?? '';
  set expiredAt(String? val) => _expiredAt = val;

  bool hasExpiredAt() => _expiredAt != null;

  // "assignment_expires_at" field.
  String? _assignmentExpiresAt;
  String get assignmentExpiresAt => _assignmentExpiresAt ?? '';
  set assignmentExpiresAt(String? val) => _assignmentExpiresAt = val;

  bool hasAssignmentExpiresAt() => _assignmentExpiresAt != null;

  static AssignmentStruct fromMap(Map<String, dynamic> data) =>
      AssignmentStruct(
        integration: castToType<int>(data['integration']),
        assigneeId: castToType<int>(data['assignee_id']),
        assigneeType: data['assignee_type'] as String?,
        expired: data['expired'] as bool?,
        accountType: data['account_type'] as String?,
        assignedAt: data['assigned_at'] as String?,
        expiredAt: data['expired_at'] as String?,
        assignmentExpiresAt: data['assignment_expires_at'] as String?,
      );

  static AssignmentStruct? maybeFromMap(dynamic data) => data is Map
      ? AssignmentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'integration': _integration,
        'assignee_id': _assigneeId,
        'assignee_type': _assigneeType,
        'expired': _expired,
        'account_type': _accountType,
        'assigned_at': _assignedAt,
        'expired_at': _expiredAt,
        'assignment_expires_at': _assignmentExpiresAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'integration': serializeParam(
          _integration,
          ParamType.int,
        ),
        'assignee_id': serializeParam(
          _assigneeId,
          ParamType.int,
        ),
        'assignee_type': serializeParam(
          _assigneeType,
          ParamType.String,
        ),
        'expired': serializeParam(
          _expired,
          ParamType.bool,
        ),
        'account_type': serializeParam(
          _accountType,
          ParamType.String,
        ),
        'assigned_at': serializeParam(
          _assignedAt,
          ParamType.String,
        ),
        'expired_at': serializeParam(
          _expiredAt,
          ParamType.String,
        ),
        'assignment_expires_at': serializeParam(
          _assignmentExpiresAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static AssignmentStruct fromSerializableMap(Map<String, dynamic> data) =>
      AssignmentStruct(
        integration: deserializeParam(
          data['integration'],
          ParamType.int,
          false,
        ),
        assigneeId: deserializeParam(
          data['assignee_id'],
          ParamType.int,
          false,
        ),
        assigneeType: deserializeParam(
          data['assignee_type'],
          ParamType.String,
          false,
        ),
        expired: deserializeParam(
          data['expired'],
          ParamType.bool,
          false,
        ),
        accountType: deserializeParam(
          data['account_type'],
          ParamType.String,
          false,
        ),
        assignedAt: deserializeParam(
          data['assigned_at'],
          ParamType.String,
          false,
        ),
        expiredAt: deserializeParam(
          data['expired_at'],
          ParamType.String,
          false,
        ),
        assignmentExpiresAt: deserializeParam(
          data['assignment_expires_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AssignmentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AssignmentStruct &&
        integration == other.integration &&
        assigneeId == other.assigneeId &&
        assigneeType == other.assigneeType &&
        expired == other.expired &&
        accountType == other.accountType &&
        assignedAt == other.assignedAt &&
        expiredAt == other.expiredAt &&
        assignmentExpiresAt == other.assignmentExpiresAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        integration,
        assigneeId,
        assigneeType,
        expired,
        accountType,
        assignedAt,
        expiredAt,
        assignmentExpiresAt
      ]);
}

AssignmentStruct createAssignmentStruct({
  int? integration,
  int? assigneeId,
  String? assigneeType,
  bool? expired,
  String? accountType,
  String? assignedAt,
  String? expiredAt,
  String? assignmentExpiresAt,
}) =>
    AssignmentStruct(
      integration: integration,
      assigneeId: assigneeId,
      assigneeType: assigneeType,
      expired: expired,
      accountType: accountType,
      assignedAt: assignedAt,
      expiredAt: expiredAt,
      assignmentExpiresAt: assignmentExpiresAt,
    );
