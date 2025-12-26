import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'icons_texts_page_model.dart';
import '/custom_code/actions/index.dart' as actions;
export 'icons_texts_page_model.dart';

class IconsTextsPageWidget extends StatefulWidget {
  const IconsTextsPageWidget({super.key});

  static String routeName = 'IconsTextsPage';
  static String routePath = '/iconsTextsPage';

  @override
  State<IconsTextsPageWidget> createState() => _IconsTextsPageWidgetState();
}

class _IconsTextsPageWidgetState extends State<IconsTextsPageWidget> {
  late IconsTextsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  double _fontSizeFromSlider(double value) {
    switch (value.round()) {
      case 0:
        return 10.0;
      case 1:
        return 24.0;
      case 2:
        return 40.0;
      default:
        return 24.0;
    }
  }

  String _fontLabelFromSlider(double value) {
    switch (value.round()) {
      case 0:
        return 'Pequena';
      case 1:
        return 'Média';
      case 2:
        return 'Grande';
      default:
        return '';
    }
  }

  double _sliderValueFromFontSize(double fontSize) {
    if (fontSize <= 12) return 0.0;
    if (fontSize <= 30) return 1.0;

    return 2.0;
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconsTextsPageModel());

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
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Opacity(
                    opacity: FFAppState().contrast,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(21.0, 35.0, 0.0, 19.0),
                      child: Text(
                        'TinoTEA',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Nunito Sans',
                              color: Colors.white,
                              fontSize: 40.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 13.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Opacity(
                            opacity: FFAppState().contrast,
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderRadius: 0.0,
                                  buttonSize: 60.0,
                                  icon: Icon(
                                    Icons.person_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 50.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: FFAppState().contrast,
                          child: Text(
                            'Supervisão',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              actions: [],
              centerTitle: false,
              toolbarHeight: 100.0,
              elevation: 2.0,
            ),
          ),
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Opacity(
                        opacity: FFAppState().contrast,
                        child: FlutterFlowIconButton(
                          borderRadius: 8.0,
                          buttonSize: FFAppState().iconSize,
                          icon: Icon(
                            Icons.arrow_back,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: valueOrDefault<double>(
                              FFAppState().iconSize,
                              56.0,
                            ),
                          ),
                          onPressed: () async {
                            context.goNamed(
                              MenuPageWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.leftToRight,
                                        duration: Duration(milliseconds: 1000),
                                      ),
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Opacity(
                        opacity: FFAppState().contrast,
                        child: Text(
                          'Voltar',
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
                    ],
                  ),
                  Opacity(
                    opacity: FFAppState().contrast,
                    child: Text(
                      'Ícones e textos',
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
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ),
                  Opacity(
                    opacity: FFAppState().contrast,
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            19.0, 15.0, 0.0, 0.0),
                        child: Text(
                          'AJUSTAR TAMANHO DOS TEXTOS',
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(19.0, 15.0, 19.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: FFAppState().contrast,
                          child: Icon(
                            Icons.horizontal_rule_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: valueOrDefault<double>(
                              FFAppState().iconSize,
                              56.0,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Opacity(
                            opacity: FFAppState().contrast,
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Slider.adaptive(
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  inactiveColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  min: 0.0,
                                  max: 2.0,
                                  divisions: 2,
                                  value: _model.sliderFontSizeValue ??=
                                      _sliderValueFromFontSize(
                                          FFAppState().fontSize),
                                  label: _fontLabelFromSlider(
                                    _model.sliderFontSizeValue ?? 1.0,
                                  ),
                                  onChanged: (newValue) {
                                    safeSetState(() {
                                      _model.sliderFontSizeValue = newValue;
                                    });
                                  },
                                  onChangeEnd: (newValue) async {
                                    final fontSize =
                                        _fontSizeFromSlider(newValue);

                                    FFAppState().update(() {
                                      FFAppState().fontSize = fontSize;
                                    });

                                    await actions.setFontSize(
                                      newValue,
                                      fontSize,
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: FFAppState().contrast,
                          child: Icon(
                            Icons.add_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: valueOrDefault<double>(
                              FFAppState().iconSize,
                              56.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: FFAppState().contrast,
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            19.0, 50.0, 0.0, 0.0),
                        child: Text(
                          'AJUSTAR TAMANHO DOS ÍCONES',
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
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(19.0, 15.0, 19.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: FFAppState().contrast,
                          child: Icon(
                            Icons.horizontal_rule_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: valueOrDefault<double>(
                              FFAppState().iconSize,
                              56.0,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Opacity(
                            opacity: FFAppState().contrast,
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Slider.adaptive(
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  inactiveColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  min: 0.0,
                                  max: 60.0,
                                  value: _model.sliderIconSizeValue ??=
                                      FFAppState().iconSize,
                                  label: _model.sliderIconSizeValue?.toString(),
                                  divisions: 6,
                                  onChanged: (newValue) {
                                    safeSetState(() =>
                                        _model.sliderIconSizeValue = newValue);
                                  },
                                  onChangeEnd: (newValue) async {
                                    safeSetState(() =>
                                        _model.sliderIconSizeValue = newValue);
                                    FFAppState().iconSize =
                                        _model.sliderIconSizeValue!;
                                    safeSetState(() {});
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: FFAppState().contrast,
                          child: Icon(
                            Icons.add_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: valueOrDefault<double>(
                              FFAppState().iconSize,
                              56.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
                    .addToStart(SizedBox(height: 15.0))
                    .addToEnd(SizedBox(height: 15.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
