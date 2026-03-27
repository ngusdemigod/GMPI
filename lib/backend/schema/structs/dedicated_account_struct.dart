// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DedicatedAccountStruct extends BaseStruct {
  DedicatedAccountStruct({
    bool? status,
    String? message,
    DataStruct? data,
  })  : _status = status,
        _message = message,
        _data = data;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  set status(bool? val) => _status = val;

  bool hasStatus() => _status != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "data" field.
  DataStruct? _data;
  DataStruct get data => _data ?? DataStruct();
  set data(DataStruct? val) => _data = val;

  void updateData(Function(DataStruct) updateFn) {
    updateFn(_data ??= DataStruct());
  }

  bool hasData() => _data != null;

  static DedicatedAccountStruct fromMap(Map<String, dynamic> data) =>
      DedicatedAccountStruct(
        status: data['status'] as bool?,
        message: data['message'] as String?,
        data: data['data'] is DataStruct
            ? data['data']
            : DataStruct.maybeFromMap(data['data']),
      );

  static DedicatedAccountStruct? maybeFromMap(dynamic data) => data is Map
      ? DedicatedAccountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'status': _status,
        'message': _message,
        'data': _data?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'status': serializeParam(
          _status,
          ParamType.bool,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static DedicatedAccountStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DedicatedAccountStruct(
        status: deserializeParam(
          data['status'],
          ParamType.bool,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        data: deserializeStructParam(
          data['data'],
          ParamType.DataStruct,
          false,
          structBuilder: DataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DedicatedAccountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DedicatedAccountStruct &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([status, message, data]);
}

DedicatedAccountStruct createDedicatedAccountStruct({
  bool? status,
  String? message,
  DataStruct? data,
}) =>
    DedicatedAccountStruct(
      status: status,
      message: message,
      data: data ?? DataStruct(),
    );
