import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _recording = '';
  String get recording => _recording;
  set recording(String value) {
    _recording = value;
  }

  String _recordedtext = '';
  String get recordedtext => _recordedtext;
  set recordedtext(String value) {
    _recordedtext = value;
  }

  String _filePath = '';
  String get filePath => _filePath;
  set filePath(String value) {
    _filePath = value;
  }

  String _transcript = '';
  String get transcript => _transcript;
  set transcript(String value) {
    _transcript = value;
  }

  String _input = '';
  String get input => _input;
  set input(String value) {
    _input = value;
  }

  String _output = '';
  String get output => _output;
  set output(String value) {
    _output = value;
  }
}
