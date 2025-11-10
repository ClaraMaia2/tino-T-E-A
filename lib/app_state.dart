import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _iconSize = prefs.getDouble('ff_iconSize') ?? _iconSize;
    });
    _safeInit(() {
      _fontSize = prefs.getDouble('ff_fontSize') ?? _fontSize;
    });
    _safeInit(() {
      _contrast = prefs.getDouble('ff_contrast') ?? _contrast;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  Color _firstBackgroundColor = Color(4283076772);
  Color get firstBackgroundColor => _firstBackgroundColor;
  set firstBackgroundColor(Color value) {
    _firstBackgroundColor = value;
  }

  Color _secondaryBackgroundColor = Color(4294638330);
  Color get secondaryBackgroundColor => _secondaryBackgroundColor;
  set secondaryBackgroundColor(Color value) {
    _secondaryBackgroundColor = value;
  }

  Color _primaryColor = Color(4283076772);
  Color get primaryColor => _primaryColor;
  set primaryColor(Color value) {
    _primaryColor = value;
  }

  Color _secondaryColor = Color(4294226307);
  Color get secondaryColor => _secondaryColor;
  set secondaryColor(Color value) {
    _secondaryColor = value;
  }

  String _frase = '';
  String get frase => _frase;
  set frase(String value) {
    _frase = value;
  }

  String _nomeCrianca = '';
  String get nomeCrianca => _nomeCrianca;
  set nomeCrianca(String value) {
    _nomeCrianca = value;
  }

  int _idadeCrianca = 0;
  int get idadeCrianca => _idadeCrianca;
  set idadeCrianca(int value) {
    _idadeCrianca = value;
  }

  String _nomeResponsavel = '';
  String get nomeResponsavel => _nomeResponsavel;
  set nomeResponsavel(String value) {
    _nomeResponsavel = value;
  }

  String _telefoneResponsavel = '';
  String get telefoneResponsavel => _telefoneResponsavel;
  set telefoneResponsavel(String value) {
    _telefoneResponsavel = value;
  }

  String _dataNascimento = '';
  String get dataNascimento => _dataNascimento;
  set dataNascimento(String value) {
    _dataNascimento = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  double _iconSize = 30.0;
  double get iconSize => _iconSize;
  set iconSize(double value) {
    _iconSize = value;
    prefs.setDouble('ff_iconSize', value);
  }

  double _fontSize = 0.0;
  double get fontSize => _fontSize;
  set fontSize(double value) {
    _fontSize = value;
    prefs.setDouble('ff_fontSize', value);
  }

  double _contrast = 1.0;
  double get contrast => _contrast;
  set contrast(double value) {
    _contrast = value;
    prefs.setDouble('ff_contrast', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
