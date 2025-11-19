// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool> validateBirthYearPin(
  String dataNascimento,
  String pinDigitado,
) async {
  if (dataNascimento.isEmpty || pinDigitado.isEmpty) {
    return false;
  }

  final dateTrimmed = dataNascimento.trim();
  String year = "";

  if (dateTrimmed.length >= 4 && RegExp(r'^\d{4}').hasMatch(dateTrimmed)) {
    year = dateTrimmed.substring(0, 4);
  } else if (dateTrimmed.length >= 10) {
    year = dateTrimmed.substring(dateTrimmed.length - 4);
  }

  if (year.isEmpty) {
    return false;
  }

  return year == pinDigitado;
}
