import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double? calculateprogress(
  double? targetAmount,
  double? amountRaised,
) {
  // Guard against nulls and zero
  if (targetAmount == null || amountRaised == null || targetAmount <= 0) {
    return 0.0;
  }

  final progress = amountRaised / targetAmount;

  // Clamp between 0 and 1 for progress bars
  if (progress < 0) return 0.0;
  if (progress > 1) return 1.0;

  return progress;
}

String? safeCurrency(
  double? amount,
  String currency,
) {
  final value = amount ?? 0.0;

  final symbol = currency.toUpperCase() == 'NGN' ? '₦' : '\$';

  final formatter = NumberFormat.currency(
    symbol: symbol,
    decimalDigits: 0,
  );

  return formatter.format(value);
}

String? initialsgenerator(
  String? firstName,
  String? lastName,
) {
  final f = (firstName ?? '').trim();
  final l = (lastName ?? '').trim();

  if (f.isEmpty && l.isEmpty) return '';

  final firstInitial = f.isNotEmpty ? f[0].toUpperCase() : '';
  final lastInitial = l.isNotEmpty ? l[0].toUpperCase() : '';

  return firstInitial + lastInitial;
}

DateTime? stringtodateformat(String? dateString) {
  if (dateString == null || dateString.isEmpty) {
    return null;
  }

  try {
    return DateTime.parse(dateString);
  } catch (e) {
    return null;
  }
}

double? formattedToDouble(String? formatted) {
  if (formatted == null || formatted.isEmpty) {
    return 0.0;
  }

  // Remove currency symbols and commas
  final cleaned = formatted
      .replaceAll('₦', '')
      .replaceAll('\$', '')
      .replaceAll(',', '')
      .trim();

  return double.tryParse(cleaned) ?? 0.0;
}

dynamic mediaPayload2JSON(MediapayloadStruct? mediapayloadStruct) {
  if (mediapayloadStruct == null) return null;

  // Mapper for normal file links
  Map<String, dynamic> fileLinkToJson(LinksStruct link) {
    return {
      'title': link.title,
      'link': link.link,
      'objectkey': link.objectkey,
    };
  }

  // Mapper for video / YouTube links (videolinks schema)
  Map<String, dynamic> videoLinkToJson(VideolinksStruct video) {
    return {
      'links': video.links,
      'isyoutube': video.isyoutube,
      'title': video.title,
    };
  }

  return {
    'payload_type': mediapayloadStruct.payloadType,
    'media_type': mediapayloadStruct.mediaType,
    'title': mediapayloadStruct.title,
    'links': mediapayloadStruct.links?.map(fileLinkToJson).toList(),
    'thumbnail_url': mediapayloadStruct.thumbnailUrl,
    'YTlinks': mediapayloadStruct.yTlinks?.map(videoLinkToJson).toList(),
  };
}

String videopath2string(String videoPath) {
  return videoPath;
}

String getContentType(String filename) {
  final ext = filename.split('.').last.toLowerCase();
  switch (ext) {
    case 'jpg':
    case 'jpeg':
      return 'image/jpeg';
    case 'png':
      return 'image/png';
    case 'webp':
      return 'image/webp';
    case 'pdf':
      return 'application/pdf';
    case 'mp3':
      return 'audio/mpeg';
    case 'wav':
      return 'audio/wav';
    case 'm4a':
      return 'audio/mp4';
    default:
      return 'application/octet-stream';
  }
}
