// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewkjStruct extends BaseStruct {
  NewkjStruct({
    String? type,
    String? title,
    String? description,
    String? htmlContent,
    bool? allowExternalLinks,
    String? renderMode,
  })  : _type = type,
        _title = title,
        _description = description,
        _htmlContent = htmlContent,
        _allowExternalLinks = allowExternalLinks,
        _renderMode = renderMode;

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

  // "html_content" field.
  String? _htmlContent;
  String get htmlContent => _htmlContent ?? '';
  set htmlContent(String? val) => _htmlContent = val;

  bool hasHtmlContent() => _htmlContent != null;

  // "allow_external_links" field.
  bool? _allowExternalLinks;
  bool get allowExternalLinks => _allowExternalLinks ?? false;
  set allowExternalLinks(bool? val) => _allowExternalLinks = val;

  bool hasAllowExternalLinks() => _allowExternalLinks != null;

  // "render_mode" field.
  String? _renderMode;
  String get renderMode => _renderMode ?? '';
  set renderMode(String? val) => _renderMode = val;

  bool hasRenderMode() => _renderMode != null;

  static NewkjStruct fromMap(Map<String, dynamic> data) => NewkjStruct(
        type: data['type'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        htmlContent: data['html_content'] as String?,
        allowExternalLinks: data['allow_external_links'] as bool?,
        renderMode: data['render_mode'] as String?,
      );

  static NewkjStruct? maybeFromMap(dynamic data) =>
      data is Map ? NewkjStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'title': _title,
        'description': _description,
        'html_content': _htmlContent,
        'allow_external_links': _allowExternalLinks,
        'render_mode': _renderMode,
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
        'html_content': serializeParam(
          _htmlContent,
          ParamType.String,
        ),
        'allow_external_links': serializeParam(
          _allowExternalLinks,
          ParamType.bool,
        ),
        'render_mode': serializeParam(
          _renderMode,
          ParamType.String,
        ),
      }.withoutNulls;

  static NewkjStruct fromSerializableMap(Map<String, dynamic> data) =>
      NewkjStruct(
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
        htmlContent: deserializeParam(
          data['html_content'],
          ParamType.String,
          false,
        ),
        allowExternalLinks: deserializeParam(
          data['allow_external_links'],
          ParamType.bool,
          false,
        ),
        renderMode: deserializeParam(
          data['render_mode'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NewkjStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NewkjStruct &&
        type == other.type &&
        title == other.title &&
        description == other.description &&
        htmlContent == other.htmlContent &&
        allowExternalLinks == other.allowExternalLinks &&
        renderMode == other.renderMode;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [type, title, description, htmlContent, allowExternalLinks, renderMode]);
}

NewkjStruct createNewkjStruct({
  String? type,
  String? title,
  String? description,
  String? htmlContent,
  bool? allowExternalLinks,
  String? renderMode,
}) =>
    NewkjStruct(
      type: type,
      title: title,
      description: description,
      htmlContent: htmlContent,
      allowExternalLinks: allowExternalLinks,
      renderMode: renderMode,
    );
