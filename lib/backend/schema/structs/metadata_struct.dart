// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MetadataStruct extends BaseStruct {
  MetadataStruct({
    String? id,
  }) : _id = id;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  static MetadataStruct fromMap(Map<String, dynamic> data) => MetadataStruct(
        id: data['id'] as String?,
      );

  static MetadataStruct? maybeFromMap(dynamic data) =>
      data is Map ? MetadataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static MetadataStruct fromSerializableMap(Map<String, dynamic> data) =>
      MetadataStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MetadataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MetadataStruct && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([id]);
}

MetadataStruct createMetadataStruct({
  String? id,
}) =>
    MetadataStruct(
      id: id,
    );
