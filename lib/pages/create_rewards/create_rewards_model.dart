import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:async';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'create_rewards_widget.dart' show CreateRewardsWidget;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class CreateRewardsModel extends FlutterFlowModel<CreateRewardsWidget> {
  ///  Local state fields for this component.

  DateTime? start;

  DateTime? end;

  double? amount;

  List<FFUploadedFile> uploaded = [];
  void addToUploaded(FFUploadedFile item) => uploaded.add(item);
  void removeFromUploaded(FFUploadedFile item) => uploaded.remove(item);
  void removeAtIndexFromUploaded(int index) => uploaded.removeAt(index);
  void insertAtIndexInUploaded(int index, FFUploadedFile item) =>
      uploaded.insert(index, item);
  void updateUploadedAtIndex(int index, Function(FFUploadedFile) updateFn) =>
      uploaded[index] = updateFn(uploaded[index]);

  double progressbar = 0.0;

  int? loop;

  String? contenttype;

  /// list if PDFS OR AUDIO
  List<LinksStruct> urls = [];
  void addToUrls(LinksStruct item) => urls.add(item);
  void removeFromUrls(LinksStruct item) => urls.remove(item);
  void removeAtIndexFromUrls(int index) => urls.removeAt(index);
  void insertAtIndexInUrls(int index, LinksStruct item) =>
      urls.insert(index, item);
  void updateUrlsAtIndex(int index, Function(LinksStruct) updateFn) =>
      urls[index] = updateFn(urls[index]);

  List<VideolinksStruct> videourls = [];
  void addToVideourls(VideolinksStruct item) => videourls.add(item);
  void removeFromVideourls(VideolinksStruct item) => videourls.remove(item);
  void removeAtIndexFromVideourls(int index) => videourls.removeAt(index);
  void insertAtIndexInVideourls(int index, VideolinksStruct item) =>
      videourls.insert(index, item);
  void updateVideourlsAtIndex(int index, Function(VideolinksStruct) updateFn) =>
      videourls[index] = updateFn(videourls[index]);

  /// video list iteration
  List<int> videolistitems = [0, 0];
  void addToVideolistitems(int item) => videolistitems.add(item);
  void removeFromVideolistitems(int item) => videolistitems.remove(item);
  void removeAtIndexFromVideolistitems(int index) =>
      videolistitems.removeAt(index);
  void insertAtIndexInVideolistitems(int index, int item) =>
      videolistitems.insert(index, item);
  void updateVideolistitemsAtIndex(int index, Function(int) updateFn) =>
      videolistitems[index] = updateFn(videolistitems[index]);

  MediapayloadStruct? payload;
  void updatePayloadStruct(Function(MediapayloadStruct) updateFn) {
    updateFn(payload ??= MediapayloadStruct());
  }

  /// delete queue
  List<LinksStruct> queue = [];
  void addToQueue(LinksStruct item) => queue.add(item);
  void removeFromQueue(LinksStruct item) => queue.remove(item);
  void removeAtIndexFromQueue(int index) => queue.removeAt(index);
  void insertAtIndexInQueue(int index, LinksStruct item) =>
      queue.insert(index, item);
  void updateQueueAtIndex(int index, Function(LinksStruct) updateFn) =>
      queue[index] = updateFn(queue[index]);

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for scrollColumn widget.
  ScrollController? scrollColumnScrollController;
  // State field(s) for Column widget.
  ScrollController? columnController;
  bool isDataUploading_uploadDataImage = false;
  FFUploadedFile uploadedLocalFile_uploadDataImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for projectName widget.
  FocusNode? projectNameFocusNode;
  TextEditingController? projectNameTextController;
  String? Function(BuildContext, String?)? projectNameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for LINK widget.
  FocusNode? linkFocusNode;
  TextEditingController? linkTextController;
  String? Function(BuildContext, String?)? linkTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (Delete file in bucket)] action in Icon widget.
  ApiCallResponse? apiResultps1Copy;
  // Stores action output result for [Backend Call - API (Delete file in bucket)] action in Icon widget.
  ApiCallResponse? apiResultps1CopyCopy;
  bool isDataUploading_uploadDataPdf = false;
  FFUploadedFile uploadedLocalFile_uploadDataPdf =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (Get upload URL)] action in Button widget.
  ApiCallResponse? signPDF;
  // Stores action output result for [Backend Call - API (Upload to bucket)] action in Button widget.
  ApiCallResponse? upload2bucket;
  bool isDataUploading_uploadDataAudio = false;
  FFUploadedFile uploadedLocalFile_uploadDataAudio =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (Get upload URL)] action in Button widget.
  ApiCallResponse? signAUDIO;
  // Stores action output result for [Backend Call - API (Delete file in bucket)] action in Icon widget.
  ApiCallResponse? apiResultqsk;
  // Stores action output result for [Backend Call - API (Get upload URL)] action in Button widget.
  ApiCallResponse? featuredurlDRAFT;
  // Stores action output result for [Backend Call - API (Upload to bucket)] action in Button widget.
  ApiCallResponse? uploadFeatured2bucketDRAFT;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  RewardsRow? uploadrowDRAFT;
  // Stores action output result for [Backend Call - API (Get upload URL)] action in Button widget.
  ApiCallResponse? featuredurl;
  // Stores action output result for [Backend Call - API (Upload to bucket)] action in Button widget.
  ApiCallResponse? uploadFeatured2bucket;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  RewardsRow? uploadrow;

  @override
  void initState(BuildContext context) {
    scrollColumnScrollController = ScrollController();
    columnController = ScrollController();
  }

  @override
  void dispose() {
    scrollColumnScrollController?.dispose();
    columnController?.dispose();
    projectNameFocusNode?.dispose();
    projectNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    linkFocusNode?.dispose();
    linkTextController?.dispose();
  }
}
