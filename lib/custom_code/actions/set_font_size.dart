// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> setFontSize(
  double sliderValue,
  double baseFontSize,
) async {
  // Garante limites entre 0 e 2
  final value = sliderValue.clamp(0.0, 2.0);

  // Mapeamento:
  // 0.0 → Small  (0.8x)
  // 1.0 → Normal (1.0x)
  // 2.0 → Big    (1.3x)

  double scale;

  if (value == 0.0)
    scale = 0.8;
  else if (value == 1.0)
    scale = 1.0;
  else if (value == 2.0)
    scale = 1.3;
  else if (value < 1.0) {
    // Entre small e normal
    scale = 0.8 + (value * (1.0 - 0.8));
  } else {
    // Entre normal e big
    scale = 1.0 + ((value - 1.0) * (1.3 - 1.0));
  }

  // Retorna o fontSize final já multiplicado
  return baseFontSize * scale;
}
