import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'consent_model.dart';
export 'consent_model.dart';

/// Tela destinada ao cadastro das informações da criança que utilizará o app.
class ConsentWidget extends StatefulWidget {
  const ConsentWidget({super.key});

  static String routeName = 'Consent';
  static String routePath = '/consent';

  @override
  State<ConsentWidget> createState() => _ConsentWidgetState();
}

class _ConsentWidgetState extends State<ConsentWidget> {
  late ConsentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConsentModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: PopScope(
        canPop: false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primary,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: Opacity(
                opacity: valueOrDefault<double>(
                  FFAppState().contrast,
                  1.0,
                ),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: valueOrDefault<double>(
                      FFAppState().iconSize,
                      60.0,
                    ),
                  ),
                  onPressed: () async {
                    context.pushNamed(
                      PreferencesContrastWidget.routeName,
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
              ),
              title: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: valueOrDefault<double>(
                      FFAppState().contrast,
                      1.0,
                    ),
                    child: Text(
                      'Voltar',
                      style: GoogleFonts.baloo2(
                        color: Colors.white,
                        fontSize: valueOrDefault<double>(
                          FFAppState().fontSize,
                          34.0,
                        ),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: valueOrDefault<double>(
                      FFAppState().contrast,
                      1.0,
                    ),
                    child: Text(
                      '7/7',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.atkinsonHyperlegible(
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
                ],
              ),
              actions: [],
              centerTitle: false,
              toolbarHeight: 100.0,
              elevation: 0.0,
            ),
          ),
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: valueOrDefault<double>(
                      FFAppState().contrast,
                      1.0,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Text(
                          'Registrar consentimento',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            color: Colors.white,
                            fontSize: valueOrDefault<double>(
                              FFAppState().fontSize,
                              55.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: valueOrDefault<double>(
                      FFAppState().contrast,
                      1.0,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: 330.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 2.0,
                          ),
                        ),
                        child: SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                opacity: valueOrDefault<double>(
                                  FFAppState().contrast,
                                  1.0,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, -1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 21.0, 15.0, 0.0),
                                    child: Text(
                                      'Ao prosseguir, você autoriza que os dados fornecidos sobre seu filho(a) sejam coletados e utilizados exclusivamente para fins do aplicativo TinoTEA, voltado ao apoio na comunicação e socialização escolar de crianças com Transtorno do Espectro Autista (TEA).',
                                      textAlign: TextAlign.justify,
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts
                                                .atkinsonHyperlegible(
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: valueOrDefault<double>(
                                  FFAppState().contrast,
                                  1.0,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 10.0, 15.0, 0.0),
                                  child: Text(
                                    'Todos os dados serão tratados de acordo com as normas de privacidade e proteção de dados, e os princípios éticos de pesquisa com crianças, garantindo:\n   -  Confidencialidade: as informações não serão compartilhadas com terceiros sem sua autorização.\n    - Segurança: os dados serão armazenados de forma segura e protegida.\n    - Finalidade específica: os dados serão usados apenas para melhorar a experiência e os recursos do aplicativo para seu filho(a).',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font:
                                              GoogleFonts.atkinsonHyperlegible(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: valueOrDefault<double>(
                                  FFAppState().contrast,
                                  1.0,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 10.0, 15.0, 21.0),
                                  child: Text(
                                    'Você pode revogar este consentimento a qualquer momento, entrando em contato com a equipe do TinoTEA.\n\nAo clicar em “Aceito”, você declara que leu e compreendeu as informações acima e autoriza o uso dos dados da criança de forma voluntária.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font:
                                              GoogleFonts.atkinsonHyperlegible(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: valueOrDefault<double>(
                      FFAppState().contrast,
                      1.0,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 10.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await currentUserReference!
                              .update(createUsersRecordData(
                            aceitouTermos: true,
                          ));

                          context.goNamed(
                            HomePageWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 1000),
                              ),
                            },
                          );
                        },
                        text: 'Aceito',
                        options: FFButtonOptions(
                          width: 330.0,
                          height: 79.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).secondary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.baloo2(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    fontSize: valueOrDefault<double>(
                                      FFAppState().fontSize,
                                      40.0,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ].addToEnd(SizedBox(height: 20.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
