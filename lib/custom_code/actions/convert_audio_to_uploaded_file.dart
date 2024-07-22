// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<FFUploadedFile?> convertAudioToUploadedFile(String? filePath) async {
  if (filePath == null) {
    debugPrint('File path is null');
    return null;
  }

  Uint8List? audioBytes;

  // Web path handling
  try {
    debugPrint('Fetching file from web...');
    // Fetch the blob data using the http package
    final response = await http.get(Uri.parse(filePath));
    if (response.statusCode == 200) {
      audioBytes = response.bodyBytes;
      debugPrint('File fetched successfully, size: ${audioBytes.length}');
    } else {
      debugPrint("Error fetching file: HTTP status ${response.statusCode}");
      return null;
    }
  } catch (e) {
    // Handle web file fetching exception
    debugPrint("Error fetching file on web: $e");
    return null;
  }

  try {
    debugPrint('INSIDE TRY CATCH');
    if (audioBytes != null && audioBytes.isNotEmpty) {
      debugPrint('INSIDE IF STATEMENT');

      FFUploadedFile newFile = FFUploadedFile(
        name: "audioFile.m4a",
        bytes: audioBytes,
        height: null,
        width: null,
        blurHash: null,
      );
      debugPrint("newFile: ${newFile}");
      return newFile;
    } else {
      debugPrint('Audio bytes are null or empty');
    }
  } catch (e) {
    debugPrint('Error converting file: $e');
    return null;
  }
  debugPrint('End of function reached without returning a file');
  return null;
}
