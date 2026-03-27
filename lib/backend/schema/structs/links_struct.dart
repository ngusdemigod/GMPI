// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LinksStruct extends BaseStruct {
  LinksStruct({
    String? title,

    /// full link + object key
    String? link,

    /// objectkey
    String? objectkey,
  })  : _title = title,
        _link = link,
        _objectkey = objectkey;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  set link(String? val) => _link = val;

  bool hasLink() => _link != null;

  // "objectkey" field.
  String? _objectkey;
  String get objectkey => _objectkey ?? '';
  set objectkey(String? val) => _objectkey = val;

  bool hasObjectkey() => _objectkey != null;

  static LinksStruct fromMap(Map<String, dynamic> data) => LinksStruct(
        title: data['title'] as String?,
        link: data['link'] as String?,
        objectkey: data['objectkey'] as String?,
      );

  static LinksStruct? maybeFromMap(dynamic data) =>
      data is Map ? LinksStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'link': _link,
        'objectkey': _objectkey,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'link': serializeParam(
          _link,
          ParamType.String,
        ),
        'objectkey': serializeParam(
          _objectkey,
          ParamType.String,
        ),
      }.withoutNulls;

  static LinksStruct fromSerializableMap(Map<String, dynamic> data) =>
      LinksStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        link: deserializeParam(
          data['link'],
          ParamType.String,
          false,
        ),
        objectkey: deserializeParam(
          data['objectkey'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LinksStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LinksStruct &&
        title == other.title &&
        link == other.link &&
        objectkey == other.objectkey;
  }

  @override
  int get hashCode => const ListEquality().hash([title, link, objectkey]);
}

LinksStruct createLinksStruct({
  String? title,
  String? link,
  String? objectkey,
}) =>
    LinksStruct(
      title: title,
      link: link,
      objectkey: objectkey,
    );
