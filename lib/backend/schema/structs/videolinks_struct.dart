// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideolinksStruct extends BaseStruct {
  VideolinksStruct({
    String? links,
    bool? isyoutube,
    String? title,
  })  : _links = links,
        _isyoutube = isyoutube,
        _title = title;

  // "links" field.
  String? _links;
  String get links => _links ?? '';
  set links(String? val) => _links = val;

  bool hasLinks() => _links != null;

  // "isyoutube" field.
  bool? _isyoutube;
  bool get isyoutube => _isyoutube ?? false;
  set isyoutube(bool? val) => _isyoutube = val;

  bool hasIsyoutube() => _isyoutube != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  static VideolinksStruct fromMap(Map<String, dynamic> data) =>
      VideolinksStruct(
        links: data['links'] as String?,
        isyoutube: data['isyoutube'] as bool?,
        title: data['title'] as String?,
      );

  static VideolinksStruct? maybeFromMap(dynamic data) => data is Map
      ? VideolinksStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'links': _links,
        'isyoutube': _isyoutube,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'links': serializeParam(
          _links,
          ParamType.String,
        ),
        'isyoutube': serializeParam(
          _isyoutube,
          ParamType.bool,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
      }.withoutNulls;

  static VideolinksStruct fromSerializableMap(Map<String, dynamic> data) =>
      VideolinksStruct(
        links: deserializeParam(
          data['links'],
          ParamType.String,
          false,
        ),
        isyoutube: deserializeParam(
          data['isyoutube'],
          ParamType.bool,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VideolinksStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VideolinksStruct &&
        links == other.links &&
        isyoutube == other.isyoutube &&
        title == other.title;
  }

  @override
  int get hashCode => const ListEquality().hash([links, isyoutube, title]);
}

VideolinksStruct createVideolinksStruct({
  String? links,
  bool? isyoutube,
  String? title,
}) =>
    VideolinksStruct(
      links: links,
      isyoutube: isyoutube,
      title: title,
    );
