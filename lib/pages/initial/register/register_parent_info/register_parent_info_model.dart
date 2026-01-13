import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'register_parent_info_widget.dart' show RegisterParentInfoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterParentInfoModel
    extends FlutterFlowModel<RegisterParentInfoWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey6 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  // State field(s) for TextFieldNomeResponsavel widget.
  FocusNode? textFieldNomeResponsavelFocusNode;
  TextEditingController? textFieldNomeResponsavelTextController;
  String? Function(BuildContext, String?)?
      textFieldNomeResponsavelTextControllerValidator;
  String? _textFieldNomeResponsavelTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nome é obrigatório';
    }

    return null;
  }

  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  String? _textFieldEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email é obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Email inválido';
    }
    return null;
  }

  // State field(s) for TextFieldTelefone widget.
  FocusNode? textFieldTelefoneFocusNode;
  TextEditingController? textFieldTelefoneTextController;
  late MaskTextInputFormatter textFieldTelefoneMask;
  String? Function(BuildContext, String?)?
      textFieldTelefoneTextControllerValidator;
  String? _textFieldTelefoneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Telefone é obrigatório';
    }

    if (!RegExp('^\\(?\\d{2}\\)?\\s?(?:9\\d{4}|\\d{4})-?\\d{4}\$')
        .hasMatch(val)) {
      return 'Formato: (00) 00000-0000';
    }
    return null;
  }

  // State field(s) for TextFieldDataNascimento widget.
  FocusNode? textFieldDataNascimentoFocusNode;
  TextEditingController? textFieldDataNascimentoTextController;
  late MaskTextInputFormatter textFieldDataNascimentoMask;
  String? Function(BuildContext, String?)?
      textFieldDataNascimentoTextControllerValidator;
  String? _textFieldDataNascimentoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Data de nascimento é obrigatória';
    }

    return null;
  }

  // State field(s) for TextFieldSenha widget.
  FocusNode? textFieldSenhaFocusNode;
  TextEditingController? textFieldSenhaTextController;
  late bool textFieldSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldSenhaTextControllerValidator;
  String? _textFieldSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email é obrigatório';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Email inválido';
    }
    return null;
  }

  // State field(s) for TextFieldConfirmarSenha widget.
  FocusNode? textFieldConfirmarSenhaFocusNode;
  TextEditingController? textFieldConfirmarSenhaTextController;
  late bool textFieldConfirmarSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldConfirmarSenhaTextControllerValidator;
  String? _textFieldConfirmarSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Senha é obrigatório';
    }

    if (val.length < 8) {
      return 'Mínimo 8 caracteres';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textFieldNomeResponsavelTextControllerValidator =
        _textFieldNomeResponsavelTextControllerValidator;
    textFieldEmailTextControllerValidator =
        _textFieldEmailTextControllerValidator;
    textFieldTelefoneTextControllerValidator =
        _textFieldTelefoneTextControllerValidator;
    textFieldDataNascimentoTextControllerValidator =
        _textFieldDataNascimentoTextControllerValidator;
    textFieldSenhaVisibility = false;
    textFieldSenhaTextControllerValidator =
        _textFieldSenhaTextControllerValidator;
    textFieldConfirmarSenhaVisibility = false;
    textFieldConfirmarSenhaTextControllerValidator =
        _textFieldConfirmarSenhaTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldNomeResponsavelFocusNode?.dispose();
    textFieldNomeResponsavelTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldTelefoneFocusNode?.dispose();
    textFieldTelefoneTextController?.dispose();

    textFieldDataNascimentoFocusNode?.dispose();
    textFieldDataNascimentoTextController?.dispose();

    textFieldSenhaFocusNode?.dispose();
    textFieldSenhaTextController?.dispose();

    textFieldConfirmarSenhaFocusNode?.dispose();
    textFieldConfirmarSenhaTextController?.dispose();
  }
}
