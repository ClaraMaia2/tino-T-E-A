import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'register_child_photo_model.dart';
export 'register_child_photo_model.dart';

/// Tela em que o responsável adiciona uma foto de perfil para a criança no
/// app.
class RegisterChildPhotoWidget extends StatefulWidget {
  const RegisterChildPhotoWidget({super.key});

  static String routeName = 'RegisterChildPhoto';
  static String routePath = '/registerChildPhoto';

  @override
  State<RegisterChildPhotoWidget> createState() =>
      _RegisterChildPhotoWidgetState();
}

class _RegisterChildPhotoWidgetState extends State<RegisterChildPhotoWidget> {
  late RegisterChildPhotoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterChildPhotoModel());
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: valueOrDefault<Color>(
          FFAppState().firstBackgroundColor,
          FlutterFlowTheme.of(context).primary,
        ),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            leading: Opacity(
              opacity: FFAppState().contrast,
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
                    RegisterChildInfoWidget.routeName,
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
                  opacity: FFAppState().contrast,
                  child: Text(
                    'Voltar',
                    style: GoogleFonts.baloo2(
                      color: Colors.white,
                      fontSize: 34.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                Opacity(
                  opacity: FFAppState().contrast,
                  child: Text(
                    '2/7',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.atkinsonHyperlegible(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Opacity(
                opacity: FFAppState().contrast,
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 33.0, 0.0, 0.0),
                    child: Text(
                      'Cadastro da criança',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Nunito Sans',
                        color: Colors.white,
                        fontSize: 64.0,
                      ),
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: FFAppState().contrast,
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 46.0, 0.0, 0.0),
                    child: Text(
                      'Escolher foto de perfil',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.baloo2(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            fontSize: 32.0,
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
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 21.0, 0.0, 0.0),
                  child: Container(
                    width: 222.0,
                    height: 222.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryText,
                        width: 2.0,
                      ),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Opacity(
                      opacity: FFAppState().contrast,
                      child: Icon(
                        Icons.person,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 190.0,
                      ),
                    ),
                  ),
                ),
              ),
              Opacity(
                opacity: FFAppState().contrast,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 39.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        RegisterParentInfoWidget.routeName,
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                            duration: Duration(milliseconds: 1000),
                          ),
                        },
                      );
                    },
                    text: 'Próximo',
                    options: FFButtonOptions(
                      width: 330.0,
                      height: 79.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: valueOrDefault<Color>(
                        FFAppState().secondaryColor,
                        FlutterFlowTheme.of(context).secondary,
                      ),
                      textStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                font: GoogleFonts.baloo2(
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                                color: Colors.black,
                                fontSize: 40.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
