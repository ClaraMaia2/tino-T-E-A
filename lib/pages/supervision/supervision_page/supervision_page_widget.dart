import 'package:tino_t_e_a/pages/supervision/supervision_page/change_p_i_n_dialog_model.dart';
import 'package:tino_t_e_a/widgets/profile_avatar.dart';

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'supervision_page_model.dart';
export 'supervision_page_model.dart';

class SupervisionPageWidget extends StatefulWidget {
  const SupervisionPageWidget({super.key});

  static String routeName = 'SupervisionPage';
  static String routePath = '/supervisionPage';

  @override
  State<SupervisionPageWidget> createState() => _SupervisionPageWidgetState();
}

class _SupervisionPageWidgetState extends State<SupervisionPageWidget> {
  late SupervisionPageModel _model;
  late ChangePINDialogModel _modelChangePin;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  late TextEditingController nomeController;
  late TextEditingController idadeController;
  late TextEditingController responsavelController;
  late TextEditingController emailController;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _modelChangePin.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupervisionPageModel());

    _modelChangePin = createModel(context, () => ChangePINDialogModel());

    _modelChangePin.textController ??=
        TextEditingController(text: FFAppState().pin);
    _modelChangePin.textFieldFocusNode ??= FocusNode();

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.userRef = await queryUsersRecordOnce(
        queryBuilder: (usersRecord) => usersRecord.where(
          'uid',
          isEqualTo: currentUserReference?.id,
        ),
        singleRecord: true,
      ).then((s) => s.firstOrNull);
      FFAppState().nomeCrianca = _model.userRef!.displayName;
      FFAppState().idadeCrianca = _model.userRef!.idadeCrianca;
      FFAppState().nomeResponsavel = _model.userRef!.nomeResponsavel;
      FFAppState().email = _model.userRef!.email;

      nomeController =
          TextEditingController(text: _model.userRef?.displayName ?? '');
      idadeController = TextEditingController(
          text: _model.userRef?.idadeCrianca.toString() ?? '');
      responsavelController =
          TextEditingController(text: _model.userRef?.nomeResponsavel ?? '');
      emailController =
          TextEditingController(text: _model.userRef?.email ?? '');
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();
    _modelChangePin.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    final sizeOf = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: sizeOf.height * 0.05,
            horizontal: sizeOf.width * 0.01,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderRadius: 8.0,
                        buttonSize: 60.0,
                        icon: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: valueOrDefault<double>(
                            FFAppState().iconSize,
                            56.0,
                          ),
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            HomePageWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.leftToRight,
                                duration: Duration(milliseconds: 1000),
                              ),
                            },
                          );
                        },
                      ),
                      Opacity(
                        opacity: FFAppState().contrast,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Voltar ao início',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.baloo2(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                                  fontSize: valueOrDefault<double>(
                                    FFAppState().fontSize,
                                    20.0,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Opacity(
                  opacity: FFAppState().contrast,
                  child: Text(
                    'Supervisão',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: valueOrDefault<double>(
                            FFAppState().fontSize,
                            24.0,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
                Opacity(
                  opacity: FFAppState().contrast,
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(19.0, 15.0, 0.0, 0.0),
                      child: Text(
                        'DADOS PESSOAIS',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.baloo2(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: valueOrDefault<double>(
                                FFAppState().fontSize,
                                24.0,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: FFAppState().contrast,
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 360),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: AbsorbPointer(
                            absorbing: !FFAppState().isEditingProfile,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                ProfileAvatar(),
                                if (FFAppState().isEditingProfile)
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                    ),
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.edit,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        Text(
                                          "Editar foto",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.baloo2(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        EditableProfileField(
                          label: 'Nome',
                          controller: nomeController,
                          isEditing: FFAppState().isEditingProfile,
                        ),
                        EditableProfileField(
                          label: 'Idade',
                          controller: idadeController,
                          isEditing: FFAppState().isEditingProfile,
                        ),
                        EditableProfileField(
                          label: 'Responsável',
                          controller: responsavelController,
                          isEditing: FFAppState().isEditingProfile,
                        ),
                        EditableProfileField(
                          label: 'Email',
                          controller: emailController,
                          isEditing: FFAppState().isEditingProfile,
                        ),
                        const SizedBox(height: 24),
                        // ===== BOTÃO DE EDITAR DADOS =====
                        Opacity(
                          opacity: FFAppState().contrast,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                // 🟡 SE NÃO ESTÁ EDITANDO → ENTRA EM MODO EDIÇÃO
                                if (!FFAppState().isEditingProfile) {
                                  FFAppState().update(() {
                                    FFAppState().isEditingProfile = true;
                                  });
                                  return;
                                }

                                // 🟢 SE ESTÁ EDITANDO → SALVA E SAI
                                await currentUserReference?.update({
                                  'display_name': nomeController.text,
                                  'idadeCrianca':
                                      int.tryParse(idadeController.text),
                                  'nomeResponsavel': responsavelController.text,
                                });

                                FFAppState().update(() {
                                  FFAppState().isEditingProfile = false;
                                });
                              },
                              text: FFAppState().isEditingProfile
                                  ? 'Salvar alterações'
                                  : 'Editar dados',
                              options: FFButtonOptions(
                                width: 340.0,
                                height: 56.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                color: FFAppState().isEditingProfile
                                    ? FlutterFlowTheme.of(context).success
                                    : FlutterFlowTheme.of(context).warning,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.baloo2(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                        // ===== BOTÃO DE EXCLUIR CONTA =====
                        Opacity(
                          opacity: FFAppState().contrast,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                await showGeneralDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  barrierLabel: 'Excluir conta',
                                  barrierColor: FlutterFlowTheme.of(context)
                                      .primaryText
                                      .withValues(alpha: 0.35),
                                  transitionDuration:
                                      const Duration(milliseconds: 1000),
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) {
                                    final maxHeight =
                                        MediaQuery.of(context).size.height *
                                            0.85;

                                    return Center(
                                      child: Material(
                                        color: Colors.transparent,
                                        child: ConstrainedBox(
                                          constraints: BoxConstraints(
                                            maxWidth: 380,
                                            maxHeight: maxHeight,
                                          ),
                                          child: Container(
                                            padding: EdgeInsets.only(
                                              top: 15,
                                              bottom: 15,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  /// TÍTULO
                                                  Opacity(
                                                    opacity:
                                                        FFAppState().contrast,
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 16),
                                                      child: Text(
                                                        'Excluir conta',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize: 36,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ),
                                                  ),

                                                  /// TEXTO
                                                  Opacity(
                                                    opacity:
                                                        FFAppState().contrast,
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .fromLTRB(
                                                          22, 24, 22, 0),
                                                      child: Text(
                                                        'Tem certeza que deseja excluir esta conta?\n\n'
                                                        'Essa ação é permanente e não poderá ser desfeita. '
                                                        'Todos os dados serão apagados.',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .baloo2(),
                                                                  fontSize: 20,
                                                                ),
                                                      ),
                                                    ),
                                                  ),

                                                  const SizedBox(height: 32),

                                                  /// BOTÃO CANCELAR
                                                  Opacity(
                                                    opacity:
                                                        FFAppState().contrast,
                                                    child: FFButtonWidget(
                                                      onPressed: () {
                                                        context.pop();
                                                      },
                                                      text: 'Cancelar',
                                                      options: FFButtonOptions(
                                                        width: 320,
                                                        height: 56,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .baloo2(),
                                                                  fontSize: 20,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                        elevation: 4,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
                                                  ),

                                                  const SizedBox(height: 16),

                                                  /// BOTÃO CONFIRMAR
                                                  Opacity(
                                                    opacity:
                                                        FFAppState().contrast,
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        await currentUserReference
                                                            ?.delete();

                                                        if (context.mounted) {
                                                          context.pop();
                                                          context.pushNamed(
                                                            StartPageWidget
                                                                .routeName,
                                                            extra: <String,
                                                                dynamic>{
                                                              kTransitionInfoKey:
                                                                  const TransitionInfo(
                                                                hasTransition:
                                                                    true,
                                                                transitionType:
                                                                    PageTransitionType
                                                                        .leftToRight,
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        800),
                                                              ),
                                                            },
                                                          );
                                                        }
                                                      },
                                                      text: 'Confirmar',
                                                      options: FFButtonOptions(
                                                        width: 320,
                                                        height: 56,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .baloo2(),
                                                                  fontSize: 20,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                        elevation: 4,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  transitionBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    final curved = CurvedAnimation(
                                      parent: animation,
                                      curve: Curves.easeOutCubic,
                                    );

                                    return FadeTransition(
                                      opacity: curved,
                                      child: ScaleTransition(
                                        scale:
                                            Tween<double>(begin: 0.96, end: 1.0)
                                                .animate(curved),
                                        child: child,
                                      ),
                                    );
                                  },
                                );
                              },
                              text: 'Excluir conta',
                              options: FFButtonOptions(
                                width: 340.0,
                                height: 56.0,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).error,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      font: GoogleFonts.baloo2(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                elevation: 4.0,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: FFAppState().contrast,
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(19.0, 50.0, 0.0, 0.0),
                      child: Text(
                        'SEGURANÇA',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.baloo2(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: valueOrDefault<double>(
                                FFAppState().fontSize,
                                24.0,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
                // ===== BOTÃO DE ALTERAR PIN =====
                Opacity(
                  opacity: FFAppState().contrast,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await showGeneralDialog(
                          context: context,
                          barrierDismissible: true,
                          barrierLabel: 'Alterar PIN',
                          barrierColor: FlutterFlowTheme.of(context)
                              .primaryText
                              .withValues(alpha: 0.35),
                          transitionDuration: const Duration(milliseconds: 600),
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            final maxHeight =
                                MediaQuery.of(context).size.height * 0.7;

                            return Center(
                              child: Material(
                                color: Colors.transparent,
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: 380,
                                    maxHeight: maxHeight,
                                  ),
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(10.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Opacity(
                                          opacity: FFAppState().contrast,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 19.0, 0.0, 0.0),
                                            child: Text(
                                              'Alterar PIN',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Nunito Sans',
                                                    fontSize: 40.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: FFAppState().contrast,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: 24.0,
                                            ),
                                            child: Text(
                                              'Você deseja alterar o PIN de acesso?\nUse um código que seja fácil para você lembrar e mantenha a área de supervisão protegida.',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.baloo2(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: FFAppState().contrast,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 0.0, 0.0),
                                            child: Text(
                                              'Digite o novo PIN para continuar:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font: GoogleFonts.nunito(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: FFAppState().contrast,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: 15.0,
                                            ),
                                            child: Container(
                                              width: double.infinity,
                                              child: TextFormField(
                                                controller: _modelChangePin
                                                    .textController,
                                                focusNode: _modelChangePin
                                                    .textFieldFocusNode,
                                                autofocus: false,
                                                enabled: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.baloo2(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                  hintText: 'Informe o PIN',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.baloo2(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent3,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .fontStyle,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsets.all(20.0),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.baloo2(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                enableInteractiveSelection:
                                                    true,
                                                validator: _modelChangePin
                                                    .textControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: FFAppState().contrast,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                context.pop();
                                              },
                                              text: 'Cancelar',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 56.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      font: GoogleFonts.baloo2(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                elevation: 4.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Opacity(
                                          opacity: FFAppState().contrast,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 25.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                FFAppState().pin =
                                                    _modelChangePin
                                                        .textController.text;
                                                safeSetState(() {});

                                                context.pushNamed(
                                                  SupervisionPageWidget
                                                      .routeName,
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 1000),
                                                    ),
                                                  },
                                                );
                                              },
                                              text: 'Confirmar',
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 56.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .success,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      font: GoogleFonts.baloo2(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                elevation: 4.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          transitionBuilder:
                              (context, animation, secondaryAnimation, child) {
                            final curved = CurvedAnimation(
                              parent: animation,
                              curve: Curves.easeOutCubic,
                            );

                            return FadeTransition(
                              opacity: curved,
                              child: ScaleTransition(
                                scale: Tween<double>(begin: 0.96, end: 1.0)
                                    .animate(curved),
                                child: child,
                              ),
                            );
                          },
                        );
                      },
                      text: 'Alterar PIN',
                      options: FFButtonOptions(
                        width: 340.0,
                        height: 56.0,
                        color: FlutterFlowTheme.of(context).warning,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.baloo2(
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 4.0,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ].addToEnd(SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}

class EditableProfileField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool isEditing;

  const EditableProfileField({
    super.key,
    required this.label,
    required this.controller,
    required this.isEditing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.baloo2(fontWeight: FontWeight.bold),
                  fontSize: 18,
                ),
          ),
          const SizedBox(height: 6),
          TextField(
            controller: controller,
            enabled: isEditing,
            readOnly: label == "Email" ? true : false,
            decoration: InputDecoration(
              filled: true,
              fillColor: isEditing
                  ? FlutterFlowTheme.of(context).primary.withValues(alpha: 0.08)
                  : Colors.transparent,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: isEditing
                      ? FlutterFlowTheme.of(context).primary
                      : Colors.transparent,
                ),
              ),
              disabledBorder: InputBorder.none,
            ),
            style: GoogleFonts.baloo2(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
