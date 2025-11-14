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
                                buttonSize: 50.0,
                                fillColor: FlutterFlowTheme.of(context).primary,
                                icon: Icon(
                                  Icons.person_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: valueOrDefault<double>(
                                    FFAppState().iconSize,
                                    50.0,
                                  ),
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
            primary: false,
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
                                transitionType: PageTransitionType.leftToRight,
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
                        'Voltar',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.baloo2(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 20.0,
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
                    'Cores e contraste',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 24.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
                Expanded(
                  child: Opacity(
                    opacity: FFAppState().contrast,
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            19.0, 18.0, 0.0, 0.0),
                        child: FlutterFlowRadioButton(
                          options: [
                            'TEMA ALTERNATIVO',
                            'TEMA ESCURO',
                            'TEMA PADRÃO'
                          ].toList(),
                          onChanged: (val) => safeSetState(() {}),
                          controller: _model.radioButtonValueController ??=
                              FormFieldController<String>('TEMA PADRÃO'),
                          optionHeight: 32.0,
                          textStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
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
                          direction: Axis.vertical,
                          radioButtonColor:
                              FlutterFlowTheme.of(context).primaryText,
                          inactiveRadioButtonColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(19.0, 50.0, 0.0, 0.0),
                    child: Text(
                      'CONTRASTE',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.baloo2(
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
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Container(
                      width: 400.0,
                      child: Slider.adaptive(
                        activeColor: FlutterFlowTheme.of(context).primaryText,
                        inactiveColor: FlutterFlowTheme.of(context).alternate,
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
              ]
                  .addToStart(SizedBox(height: 15.0))
                  .addToEnd(SizedBox(height: 15.0)),
            ),
          ),
        ),
      ),
    );
  }
}
