// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_tts/flutter_tts.dart';

final FlutterTts _tts = FlutterTts();

Future speakText(String? text) async {
  if (text == null || text.trim().isEmpty) return;

  await _tts.setLanguage('pt-BR');
  await _tts.setVolume(FFAppState().audioVolume);
  await _tts.setPitch(1.0);

  if (FFAppState().enableRepeatText == true) {
    await _tts.speak(text!);
  }
}
