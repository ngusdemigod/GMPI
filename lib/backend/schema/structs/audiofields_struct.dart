// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AudiofieldsStruct extends BaseStruct {
  AudiofieldsStruct({
    String? title,
    String? link,
  })  : _title = title,
        _link = link;

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

  static AudiofieldsStruct fromMap(Map<String, dynamic> data) =>
      AudiofieldsStruct(
        title: data['title'] as String?,
        link: data['link'] as String?,
      );

  static AudiofieldsStruct? maybeFromMap(dynamic data) => data is Map
      ? AudiofieldsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'link': _link,
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
      }.withoutNulls;

  static AudiofieldsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AudiofieldsStruct(
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
      );

  @override
  String toString() => 'AudiofieldsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AudiofieldsStruct &&
        title == other.title &&
        link == other.link;
  }

  @override
  int get hashCode => const ListEquality().hash([title, link]);
}

AudiofieldsStruct createAudiofieldsStruct({
  String? title,
  String? link,
}) =>
    AudiofieldsStruct(
      title: title,
      link: link,
    );
