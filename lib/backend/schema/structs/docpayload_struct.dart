// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocpayloadStruct extends BaseStruct {
  DocpayloadStruct({
    String? type,
    String? title,
    String? description,
    int? pages,
    String? fileUrl,
    bool? downloadAllowed,
  })  : _type = type,
        _title = title,
        _description = description,
        _pages = pages,
        _fileUrl = fileUrl,
        _downloadAllowed = downloadAllowed;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "pages" field.
  int? _pages;
  int get pages => _pages ?? 0;
  set pages(int? val) => _pages = val;

  void incrementPages(int amount) => pages = pages + amount;

  bool hasPages() => _pages != null;

  // "file_url" field.
  String? _fileUrl;
  String get fileUrl => _fileUrl ?? '';
  set fileUrl(String? val) => _fileUrl = val;

  bool hasFileUrl() => _fileUrl != null;

  // "download_allowed" field.
  bool? _downloadAllowed;
  bool get downloadAllowed => _downloadAllowed ?? false;
  set downloadAllowed(bool? val) => _downloadAllowed = val;

  bool hasDownloadAllowed() => _downloadAllowed != null;

  static DocpayloadStruct fromMap(Map<String, dynamic> data) =>
      DocpayloadStruct(
        type: data['type'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        pages: castToType<int>(data['pages']),
        fileUrl: data['file_url'] as String?,
        downloadAllowed: data['download_allowed'] as bool?,
      );

  static DocpayloadStruct? maybeFromMap(dynamic data) => data is Map
      ? DocpayloadStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'title': _title,
        'description': _description,
        'pages': _pages,
        'file_url': _fileUrl,
        'download_allowed': _downloadAllowed,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'pages': serializeParam(
          _pages,
          ParamType.int,
        ),
        'file_url': serializeParam(
          _fileUrl,
          ParamType.String,
        ),
        'download_allowed': serializeParam(
          _downloadAllowed,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DocpayloadStruct fromSerializableMap(Map<String, dynamic> data) =>
      DocpayloadStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        pages: deserializeParam(
          data['pages'],
          ParamType.int,
          false,
        ),
        fileUrl: deserializeParam(
          data['file_url'],
          ParamType.String,
          false,
        ),
        downloadAllowed: deserializeParam(
          data['download_allowed'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DocpayloadStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DocpayloadStruct &&
        type == other.type &&
        title == other.title &&
        description == other.description &&
        pages == other.pages &&
        fileUrl == other.fileUrl &&
        downloadAllowed == other.downloadAllowed;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([type, title, description, pages, fileUrl, downloadAllowed]);
}

DocpayloadStruct createDocpayloadStruct({
  String? type,
  String? title,
  String? description,
  int? pages,
  String? fileUrl,
  bool? downloadAllowed,
}) =>
    DocpayloadStruct(
      type: type,
      title: title,
      description: description,
      pages: pages,
      fileUrl: fileUrl,
      downloadAllowed: downloadAllowed,
    );
