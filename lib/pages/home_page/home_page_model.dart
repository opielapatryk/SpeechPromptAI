import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  AudioRecorder? audioRecorder;
  String? recording;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  // Stores action output result for [Custom Action - convertAudioToUploadedFile] action in Button widget.
  FFUploadedFile? convertedRecording;
  // Stores action output result for [Backend Call - API (transcribeaudio)] action in Button widget.
  ApiCallResponse? apiResult;
  // Stores action output result for [Backend Call - API (textcall)] action in Button widget.
  ApiCallResponse? apiResultp7g;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
