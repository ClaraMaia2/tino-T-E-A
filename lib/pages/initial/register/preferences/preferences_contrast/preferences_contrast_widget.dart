import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'preferences_contrast_model.dart';
export 'preferences_contrast_model.dart';

/// Tela destinada ao cadastro das informações da criança que utilizará o app.
class PreferencesContrastWidget extends StatefulWidget {
  const PreferencesContrastWidget({super.key});

  static String routeName = 'PreferencesContrast';
  static String routePath = '/preferencesContrast';

  @override
  State<PreferencesContrastWidget> createState() =>
      _PreferencesContrastWidgetState();
}

class _PreferencesContrastWidgetState extends State<PreferencesContrastWidget> {
  late PreferencesContrastModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PreferencesContrastModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                      PreferencesColorsWidget.routeName,
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
                        fontSize: 34.0,
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
                      '6/7',
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
                      child: Text(
                        'Definir preferências',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Nunito Sans',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          fontSize: 64.0,
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: valueOrDefault<double>(
                      FFAppState().contrast,
                      1.0,
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            30.0, 66.0, 0.0, 0.0),
                        child: Text(
                          'Contraste',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.baloo2(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Container(
                        width: 400.0,
                        child: Slider.adaptive(
                          activeColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          inactiveColor: FlutterFlowTheme.of(context).accent4,
                          min: 0.0,
                          max: 1.0,
                          value: _model.sliderContrastValue ??= 1.0,
                          label: _model.sliderContrastValue?.toString(),
                          divisions: 10,
                          onChanged: (newValue) {
                            safeSetState(
                                () => _model.sliderContrastValue = newValue);
                          },
                          onChangeEnd: (newValue) async {
                            safeSetState(
                                () => _model.sliderContrastValue = newValue);
                            FFAppState().contrast = _model.sliderContrastValue!;
                            safeSetState(() {});
                          },
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
                          EdgeInsetsDirectional.fromSTEB(0.0, 54.0, 0.0, 0.0),
                      child: Container(
                        width: 330.0,
                        height: 200.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primaryText,
                            width: 2.0,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AnimatedOpacity(
                              opacity: valueOrDefault<double>(
                                FFAppState().contrast,
                                1.0,
                              ),
                              duration: 1000.0.ms,
                              curve: Curves.easeIn,
                              child: Align(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Text(
                                    'TinoTEA',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Nunito Sans',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Opacity(
                                  opacity: valueOrDefault<double>(
                                    FFAppState().contrast,
                                    1.0,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30.0, 11.0, 0.0, 0.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 130.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Opacity(
                                            opacity: valueOrDefault<double>(
                                              FFAppState().contrast,
                                              1.0,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  'Escolar',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 14.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/escola.png',
                                                  width: 200.0,
                                                  height: 68.59,
                                                  fit: BoxFit.fitHeight,
                                                  alignment:
                                                      Alignment(0.0, 0.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Opacity(
                                    opacity: valueOrDefault<double>(
                                      FFAppState().contrast,
                                      1.0,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          11.0, 0.0, 12.0, 0.0),
                                      child: Text(
                                        'Suporte visual e interativo para o dia a dia escolar da criança.',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.baloo2(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
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
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 51.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          ConsentWidget.routeName,
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
