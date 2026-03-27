// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventTicketPayloadStruct extends BaseStruct {
  EventTicketPayloadStruct({
    String? type,
    String? eventType,
    String? id,
    String? eventName,
    String? startDatetime,
    String? endDatetime,
    String? venue,
    String? address,
    String? url,
    String? expiresAt,
  })  : _type = type,
        _eventType = eventType,
        _id = id,
        _eventName = eventName,
        _startDatetime = startDatetime,
        _endDatetime = endDatetime,
        _venue = venue,
        _address = address,
        _url = url,
        _expiresAt = expiresAt;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "event_type" field.
  String? _eventType;
  String get eventType => _eventType ?? '';
  set eventType(String? val) => _eventType = val;

  bool hasEventType() => _eventType != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  set eventName(String? val) => _eventName = val;

  bool hasEventName() => _eventName != null;

  // "start_datetime" field.
  String? _startDatetime;
  String get startDatetime => _startDatetime ?? '';
  set startDatetime(String? val) => _startDatetime = val;

  bool hasStartDatetime() => _startDatetime != null;

  // "end_datetime" field.
  String? _endDatetime;
  String get endDatetime => _endDatetime ?? '';
  set endDatetime(String? val) => _endDatetime = val;

  bool hasEndDatetime() => _endDatetime != null;

  // "venue" field.
  String? _venue;
  String get venue => _venue ?? '';
  set venue(String? val) => _venue = val;

  bool hasVenue() => _venue != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  // "expires_at" field.
  String? _expiresAt;
  String get expiresAt => _expiresAt ?? '';
  set expiresAt(String? val) => _expiresAt = val;

  bool hasExpiresAt() => _expiresAt != null;

  static EventTicketPayloadStruct fromMap(Map<String, dynamic> data) =>
      EventTicketPayloadStruct(
        type: data['type'] as String?,
        eventType: data['event_type'] as String?,
        id: data['id'] as String?,
        eventName: data['event_name'] as String?,
        startDatetime: data['start_datetime'] as String?,
        endDatetime: data['end_datetime'] as String?,
        venue: data['venue'] as String?,
        address: data['address'] as String?,
        url: data['url'] as String?,
        expiresAt: data['expires_at'] as String?,
      );

  static EventTicketPayloadStruct? maybeFromMap(dynamic data) => data is Map
      ? EventTicketPayloadStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'event_type': _eventType,
        'id': _id,
        'event_name': _eventName,
        'start_datetime': _startDatetime,
        'end_datetime': _endDatetime,
        'venue': _venue,
        'address': _address,
        'url': _url,
        'expires_at': _expiresAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'event_type': serializeParam(
          _eventType,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'event_name': serializeParam(
          _eventName,
          ParamType.String,
        ),
        'start_datetime': serializeParam(
          _startDatetime,
          ParamType.String,
        ),
        'end_datetime': serializeParam(
          _endDatetime,
          ParamType.String,
        ),
        'venue': serializeParam(
          _venue,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'expires_at': serializeParam(
          _expiresAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static EventTicketPayloadStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      EventTicketPayloadStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        eventType: deserializeParam(
          data['event_type'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        eventName: deserializeParam(
          data['event_name'],
          ParamType.String,
          false,
        ),
        startDatetime: deserializeParam(
          data['start_datetime'],
          ParamType.String,
          false,
        ),
        endDatetime: deserializeParam(
          data['end_datetime'],
          ParamType.String,
          false,
        ),
        venue: deserializeParam(
          data['venue'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        expiresAt: deserializeParam(
          data['expires_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EventTicketPayloadStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventTicketPayloadStruct &&
        type == other.type &&
        eventType == other.eventType &&
        id == other.id &&
        eventName == other.eventName &&
        startDatetime == other.startDatetime &&
        endDatetime == other.endDatetime &&
        venue == other.venue &&
        address == other.address &&
        url == other.url &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        type,
        eventType,
        id,
        eventName,
        startDatetime,
        endDatetime,
        venue,
        address,
        url,
        expiresAt
      ]);
}

EventTicketPayloadStruct createEventTicketPayloadStruct({
  String? type,
  String? eventType,
  String? id,
  String? eventName,
  String? startDatetime,
  String? endDatetime,
  String? venue,
  String? address,
  String? url,
  String? expiresAt,
}) =>
    EventTicketPayloadStruct(
      type: type,
      eventType: eventType,
      id: id,
      eventName: eventName,
      startDatetime: startDatetime,
      endDatetime: endDatetime,
      venue: venue,
      address: address,
      url: url,
      expiresAt: expiresAt,
    );
