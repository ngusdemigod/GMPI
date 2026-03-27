// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MediapayloadStruct extends BaseStruct {
  MediapayloadStruct({
    /// audio, video
    String? payloadType,
    String? mediaType,
    String? title,

    /// generallinks
    List<LinksStruct>? links,
    String? thumbnailUrl,
    List<VideolinksStruct>? yTlinks,
  })  : _payloadType = payloadType,
        _mediaType = mediaType,
        _title = title,
        _links = links,
        _thumbnailUrl = thumbnailUrl,
        _yTlinks = yTlinks;

  // "payload_type" field.
  String? _payloadType;
  String get payloadType => _payloadType ?? '';
  set payloadType(String? val) => _payloadType = val;

  bool hasPayloadType() => _payloadType != null;

  // "media_type" field.
  String? _mediaType;
  String get mediaType => _mediaType ?? '';
  set mediaType(String? val) => _mediaType = val;

  bool hasMediaType() => _mediaType != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "links" field.
  List<LinksStruct>? _links;
  List<LinksStruct> get links => _links ?? const [];
  set links(List<LinksStruct>? val) => _links = val;

  void updateLinks(Function(List<LinksStruct>) updateFn) {
    updateFn(_links ??= []);
  }

  bool hasLinks() => _links != null;

  // "thumbnail_url" field.
  String? _thumbnailUrl;
  String get thumbnailUrl => _thumbnailUrl ?? '';
  set thumbnailUrl(String? val) => _thumbnailUrl = val;

  bool hasThumbnailUrl() => _thumbnailUrl != null;

  // "YTlinks" field.
  List<VideolinksStruct>? _yTlinks;
  List<VideolinksStruct> get yTlinks => _yTlinks ?? const [];
  set yTlinks(List<VideolinksStruct>? val) => _yTlinks = val;

  void updateYTlinks(Function(List<VideolinksStruct>) updateFn) {
    updateFn(_yTlinks ??= []);
  }

  bool hasYTlinks() => _yTlinks != null;

  static MediapayloadStruct fromMap(Map<String, dynamic> data) =>
      MediapayloadStruct(
        payloadType: data['payload_type'] as String?,
        mediaType: data['media_type'] as String?,
        title: data['title'] as String?,
        links: getStructList(
          data['links'],
          LinksStruct.fromMap,
        ),
        thumbnailUrl: data['thumbnail_url'] as String?,
        yTlinks: getStructList(
          data['YTlinks'],
          VideolinksStruct.fromMap,
        ),
      );

  static MediapayloadStruct? maybeFromMap(dynamic data) => data is Map
      ? MediapayloadStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'payload_type': _payloadType,
        'media_type': _mediaType,
        'title': _title,
        'links': _links?.map((e) => e.toMap()).toList(),
        'thumbnail_url': _thumbnailUrl,
        'YTlinks': _yTlinks?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'payload_type': serializeParam(
          _payloadType,
          ParamType.String,
        ),
        'media_type': serializeParam(
          _mediaType,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'links': serializeParam(
          _links,
          ParamType.DataStruct,
          isList: true,
        ),
        'thumbnail_url': serializeParam(
          _thumbnailUrl,
          ParamType.String,
        ),
        'YTlinks': serializeParam(
          _yTlinks,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static MediapayloadStruct fromSerializableMap(Map<String, dynamic> data) =>
      MediapayloadStruct(
        payloadType: deserializeParam(
          data['payload_type'],
          ParamType.String,
          false,
        ),
        mediaType: deserializeParam(
          data['media_type'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        links: deserializeStructParam<LinksStruct>(
          data['links'],
          ParamType.DataStruct,
          true,
          structBuilder: LinksStruct.fromSerializableMap,
        ),
        thumbnailUrl: deserializeParam(
          data['thumbnail_url'],
          ParamType.String,
          false,
        ),
        yTlinks: deserializeStructParam<VideolinksStruct>(
          data['YTlinks'],
          ParamType.DataStruct,
          true,
          structBuilder: VideolinksStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MediapayloadStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MediapayloadStruct &&
        payloadType == other.payloadType &&
        mediaType == other.mediaType &&
        title == other.title &&
        listEquality.equals(links, other.links) &&
        thumbnailUrl == other.thumbnailUrl &&
        listEquality.equals(yTlinks, other.yTlinks);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([payloadType, mediaType, title, links, thumbnailUrl, yTlinks]);
}

MediapayloadStruct createMediapayloadStruct({
  String? payloadType,
  String? mediaType,
  String? title,
  String? thumbnailUrl,
}) =>
    MediapayloadStruct(
      payloadType: payloadType,
      mediaType: mediaType,
      title: title,
      thumbnailUrl: thumbnailUrl,
    );
