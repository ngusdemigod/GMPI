import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CreateCustomerAccountCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? fname = '',
    String? lname = '',
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "first_name": "${escapeStringForJson(fname)}",
  "last_name": "${escapeStringForJson(lname)}",
  "phone": "${escapeStringForJson(phone)}",
  "preferred_bank": "test-bank"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create customer   Account',
      apiUrl:
          'https://mserfaaywuivgptfodcp.supabase.co/functions/v1/CreateCustomerDVA',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1zZXJmYWF5d3VpdmdwdGZvZGNwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYzNjU4MTYsImV4cCI6MjA4MTk0MTgxNn0.eLJBYij818sLyIT6-1DF2-uoCVwiF9ai-pTFmqorCgU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? customercode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.customer.customer_code''',
      ));
  static int? customerid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.customer.id''',
      ));
  static String? bankname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dedicated_account.data.bank.name''',
      ));
  static int? bankID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.dedicated_account.data.bank.id''',
      ));
  static String? accountname(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dedicated_account.data.account_name''',
      ));
  static String? accountNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dedicated_account.data.account_number''',
      ));
}

class GetCustomerCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get customer',
      apiUrl:
          'https://mserfaaywuivgptfodcp.supabase.co/functions/v1/get-customer',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1zZXJmYWF5d3VpdmdwdGZvZGNwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYzNjU4MTYsImV4cCI6MjA4MTk0MTgxNn0.eLJBYij818sLyIT6-1DF2-uoCVwiF9ai-pTFmqorCgU',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1zZXJmYWF5d3VpdmdwdGZvZGNwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYzNjU4MTYsImV4cCI6MjA4MTk0MTgxNn0.eLJBYij818sLyIT6-1DF2-uoCVwiF9ai-pTFmqorCgU',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      params: {
        'email_or_code': email,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? customercode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.customer_code''',
      ));
  static int? totalTransactions(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.data.total_transactions''',
      ));
  static List? totalTransactionsValue(dynamic response) => getJsonField(
        response,
        r'''$.data.total_transaction_value''',
        true,
      ) as List?;
  static List? dedicatedAccounts(dynamic response) => getJsonField(
        response,
        r'''$.data.dedicated_accounts''',
        true,
      ) as List?;
  static int? customerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.id''',
      ));
}

class InitializeTransactionCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    int? amount,
    String? projectId = '',
    String? currency = '',
    String? userId = '',
    String? transactionType = '',
    String? churchId = '',
    String? weburl = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "amount": ${amount},
  "currency": "${escapeStringForJson(currency)}",
  "church_id": "${escapeStringForJson(churchId)}",
  "member_id": "${escapeStringForJson(userId)}",
  "transaction_type": "${escapeStringForJson(transactionType)}",
  "project_id": "${escapeStringForJson(projectId)}",
  "subscription_code": null,
  "callback_url": "${escapeStringForJson(weburl)}/payment-success",
  "metadata": {
    "purpose": "${escapeStringForJson(transactionType)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'initialize transaction',
      apiUrl:
          'https://mserfaaywuivgptfodcp.supabase.co/functions/v1/initializa-a-transaction',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1zZXJmYWF5d3VpdmdwdGZvZGNwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYzNjU4MTYsImV4cCI6MjA4MTk0MTgxNn0.eLJBYij818sLyIT6-1DF2-uoCVwiF9ai-pTFmqorCgU',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1zZXJmYWF5d3VpdmdwdGZvZGNwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYzNjU4MTYsImV4cCI6MjA4MTk0MTgxNn0.eLJBYij818sLyIT6-1DF2-uoCVwiF9ai-pTFmqorCgU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? authURL(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authorization_url''',
      ));
  static String? referenceCode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.reference''',
      ));
}

class VerifyTransactionCall {
  static Future<ApiCallResponse> call({
    String? ref = '',
  }) async {
    final ffApiRequestBody = '''
{
  "reference": "${escapeStringForJson(ref)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'verify transaction',
      apiUrl:
          'https://mserfaaywuivgptfodcp.supabase.co/functions/v1/verify-transaction',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1zZXJmYWF5d3VpdmdwdGZvZGNwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYzNjU4MTYsImV4cCI6MjA4MTk0MTgxNn0.eLJBYij818sLyIT6-1DF2-uoCVwiF9ai-pTFmqorCgU',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1zZXJmYWF5d3VpdmdwdGZvZGNwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYzNjU4MTYsImV4cCI6MjA4MTk0MTgxNn0.eLJBYij818sLyIT6-1DF2-uoCVwiF9ai-pTFmqorCgU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? amount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.amount''',
      ));
  static String? currency(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.currency''',
      ));
  static String? channel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.channel''',
      ));
}

class CreatePaystackSubscriptionCall {
  static Future<ApiCallResponse> call({
    int? amount,
    String? interval = '',
    String? currency = '',
    String? email = '',
    String? churchId = '',
    String? memberId = '',
    String? startDate = '',
    String? transactionType = '',
    String? planName = '',
    String? planId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "amount": ${amount},
  "interval": "${escapeStringForJson(interval)}",
  "plan_name": "${escapeStringForJson(planName)}",
  "church_id": "${escapeStringForJson(churchId)}",
  "member_id": "${escapeStringForJson(memberId)}",
  "currency": "${escapeStringForJson(currency)}",
  "email": "${escapeStringForJson(email)}",
  "start_date": "${escapeStringForJson(startDate)}",
  "partnership_plan": "${escapeStringForJson(planId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create paystack subscription',
      apiUrl:
          'https://mserfaaywuivgptfodcp.supabase.co/functions/v1/Create-paystack-subscription',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1zZXJmYWF5d3VpdmdwdGZvZGNwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYzNjU4MTYsImV4cCI6MjA4MTk0MTgxNn0.eLJBYij818sLyIT6-1DF2-uoCVwiF9ai-pTFmqorCgU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.initialize.data.authorization_url''',
      ));
}

class VerifyPaystackSubscriptionCall {
  static Future<ApiCallResponse> call({
    String? customerCode = '',
    int? page,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'verify paystack subscription',
      apiUrl:
          'https://mserfaaywuivgptfodcp.supabase.co/functions/v1/clever-function',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1zZXJmYWF5d3VpdmdwdGZvZGNwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYzNjU4MTYsImV4cCI6MjA4MTk0MTgxNn0.eLJBYij818sLyIT6-1DF2-uoCVwiF9ai-pTFmqorCgU',
      },
      params: {
        'customer_code': customerCode,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class InitializeFreewillGivingCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    int? amount,
    String? currency = '',
    String? churchId = '',
    String? memberId = '',
    String? transactionType = '',
    String? projectName = '',
    String? notes = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "amount": ${amount},
  "currency": "${escapeStringForJson(currency)}",
  "church_id": "${escapeStringForJson(churchId)}",
  "member_id": "${escapeStringForJson(memberId)}",
  "transaction_type": "${escapeStringForJson(transactionType)}",
  "callback_url": "<weburl>/payment-success",
  "metadata": {
    "purpose": "${escapeStringForJson(transactionType)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'initialize freewill giving',
      apiUrl:
          'https://mserfaaywuivgptfodcp.supabase.co/functions/v1/initializa-a-transaction',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1zZXJmYWF5d3VpdmdwdGZvZGNwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYzNjU4MTYsImV4cCI6MjA4MTk0MTgxNn0.eLJBYij818sLyIT6-1DF2-uoCVwiF9ai-pTFmqorCgU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authorization_url''',
      ));
  static String? ref(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.reference''',
      ));
}

class PausePaystackSubscriptionCall {
  static Future<ApiCallResponse> call({
    String? subscription = '',
    String? emailToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "subscription_code": "${escapeStringForJson(subscription)}",
  "email_token": "${escapeStringForJson(emailToken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'pause paystack subscription',
      apiUrl:
          'https://mserfaaywuivgptfodcp.supabase.co/functions/v1/dynamic-service',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1zZXJmYWF5d3VpdmdwdGZvZGNwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYzNjU4MTYsImV4cCI6MjA4MTk0MTgxNn0.eLJBYij818sLyIT6-1DF2-uoCVwiF9ai-pTFmqorCgU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ResumePaystackSubscriptionCall {
  static Future<ApiCallResponse> call({
    String? subsriptioncode = '',
    String? emailtoken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "subscription_code": "${escapeStringForJson(subsriptioncode)}",
  "email_token": "${escapeStringForJson(emailtoken)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'resume paystack subscription',
      apiUrl:
          'https://mserfaaywuivgptfodcp.supabase.co/functions/v1/resume-paystack-subscription',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1zZXJmYWF5d3VpdmdwdGZvZGNwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYzNjU4MTYsImV4cCI6MjA4MTk0MTgxNn0.eLJBYij818sLyIT6-1DF2-uoCVwiF9ai-pTFmqorCgU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUploadURLCall {
  static Future<ApiCallResponse> call({
    String? churchId = '',
    String? filename = '',
    String? jwt = '',
    String? contenttype = '',
  }) async {
    final ffApiRequestBody = '''
{
  "churchId": "${escapeStringForJson(churchId)}",
  "filename": "${escapeStringForJson(filename)}",
  "contentType": "${escapeStringForJson(contenttype)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get upload URL',
      apiUrl:
          'https://mserfaaywuivgptfodcp.supabase.co/functions/v1/Upload-files-to-bucket',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? uploadurl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uploadUrl''',
      ));
  static String? objectkey(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.objectKey''',
      ));
  static int? expires(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expiresIn''',
      ));
}

class UploadToBucketCall {
  static Future<ApiCallResponse> call({
    String? url = '',
    FFUploadedFile? file,
    String? jwt = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Upload to bucket',
      apiUrl:
          'https://mserfaaywuivgptfodcp.supabase.co/functions/v1/uploadtor2',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
      },
      params: {
        'file': file,
        'uploadUrl': url,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteFileInBucketCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? url = '',
    String? churchId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "url": "${escapeStringForJson(url)}",
  "churchId": "${escapeStringForJson(churchId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Delete file in bucket',
      apiUrl:
          'https://mserfaaywuivgptfodcp.supabase.co/functions/v1/deleteimageinbucket',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $jwt',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
