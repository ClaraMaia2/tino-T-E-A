import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'colors_contrast_page_model.dart';
export 'colors_contrast_page_model.dart';

class ColorsContrastPageWidget extends StatefulWidget {
  const ColorsContrastPageWidget({super.key});

  static String routeName = 'ColorsContrastPage';
  static String routePath = '/colorsContrastPage';

  @override
  State<ColorsContrastPageWidget> createState() =>
      _ColorsContrastPageWidgetState();
}

class _ColorsContrastPageWidgetState extends State<ColorsContrastPageWidget> {
  late ColorsContrastPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColorsContrastPageModel());

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: FFAppState().contrast,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(21.0, 35.0, 0.0, 19.0),
                    child: Text(
                      'TinoTEA',
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
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
                  padding: EdgeInsetsDirectional.fromSTEB(70.0, 0.0, 13.0, 0.0),
                  child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(
                          LockSupervisionPageWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 1000),
                            ),
                          },
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Opacity(
                            opacity: FFAppState().contrast,
                            child: FlutterFlowIconButton(
                              borderRadius: 0,
                              buttonSize: 60,
                              icon: Icon(
                                Icons.person_outlined,
                                size: valueOrDefault<double>(
                                  FFAppState().iconSize,
                                  50.0,
                                ),
                              ),
                              onPressed: () async {
                                context.pushNamed(
                                  LockSupervisionPageWidget.routeName,
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.rightToLeft,
                                      duration: Duration(milliseconds: 1000),
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                          Opacity(
                            opacity: FFAppState().contrast,
                            child: Text(
                              'Supervisão',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ],
                      )),
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
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Opacity(
                              opacity: FFAppState().contrast,
                              child: FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: FFAppState().iconSize,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                          ],
                        ),
                        const SizedBox(height: 24),
                        Center(
                          child: Opacity(
                            opacity: FFAppState().contrast,
                            child: Text(
                              'Cores e contraste',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
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
                        ),
                        const SizedBox(height: 24),
                        Opacity(
                          opacity: FFAppState().contrast,
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 0),
                            child: FlutterFlowRadioButton(
                              radioButtonColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              options: const [
                                'TEMA ALTERNATIVO',
                                'TEMA ESCURO',
                                'TEMA PADRÃO',
                              ],
                              controller: _model.radioButtonValueController ??=
                                  FormFieldController('TEMA PADRÃO'),
                              onChanged: (_) => safeSetState(() {}),
                              direction: Axis.vertical,
                              optionHeight: 48,
                              toggleable: false,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.baloo2(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    fontSize: valueOrDefault<double>(
                                      FFAppState().fontSize,
                                      24.0,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                              buttonPosition: RadioButtonPosition.left,
                              horizontalAlignment: WrapAlignment.start,
                              verticalAlignment: WrapCrossAlignment.start,
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        Opacity(
                          opacity: FFAppState().contrast,
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  19.0, 50.0, 0.0, 0.0),
                              child: Text(
                                'CONTRASTE',
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
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Slider.adaptive(
                                activeColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                inactiveColor:
                                    FlutterFlowTheme.of(context).accent3,
                                min: 0.0,
                                max: 1.0,
                                value: _model.sliderContrastValue ??=
                                    FFAppState().contrast,
                                label: _model.sliderContrastValue?.toString(),
                                divisions: 10,
                                onChanged: (newValue) {
                                  safeSetState(() =>
                                      _model.sliderContrastValue = newValue);
                                },
                                onChangeEnd: (newValue) async {
                                  safeSetState(() =>
                                      _model.sliderContrastValue = newValue);
                                  FFAppState().contrast =
                                      _model.sliderContrastValue!;
                                  safeSetState(() {});
                                },
                              ),
                            ),
                          ),
                        ),
                      ]
                          .addToStart(SizedBox(
                            height: 15,
                          ))
                          .addToEnd(SizedBox(
                            height: 15,
                          )),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
