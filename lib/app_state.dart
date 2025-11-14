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
      _enableRepeatColor =
          _colorFromIntValue(prefs.getInt('ff_enableRepeatColor')) ??
              _enableRepeatColor;
    });
    _safeInit(() {
      _iconSize = prefs.getDouble('ff_iconSize') ?? _iconSize;
    });
    _safeInit(() {
      _fontSize = prefs.getDouble('ff_fontSize') ?? _fontSize;
    });
    _safeInit(() {
      _contrast = prefs.getDouble('ff_contrast') ?? _contrast;
    });
    _safeInit(() {
      _audioVolume = prefs.getDouble('ff_audioVolume') ?? _audioVolume;
    });
    _safeInit(() {
      _enableRepeatText =
          prefs.getString('ff_enableRepeatText') ?? _enableRepeatText;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  Color _enableRepeatColor = Colors.transparent;
  Color get enableRepeatColor => _enableRepeatColor;
  set enableRepeatColor(Color value) {
    _enableRepeatColor = value;
    prefs.setInt('ff_enableRepeatColor', value.value);
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

  double _iconSize = 56.0;
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

  double _audioVolume = 1.0;
  double get audioVolume => _audioVolume;
  set audioVolume(double value) {
    _audioVolume = value;
    prefs.setDouble('ff_audioVolume', value);
  }

  String _enableRepeatText = '';
  String get enableRepeatText => _enableRepeatText;
  set enableRepeatText(String value) {
    _enableRepeatText = value;
    prefs.setString('ff_enableRepeatText', value);
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
