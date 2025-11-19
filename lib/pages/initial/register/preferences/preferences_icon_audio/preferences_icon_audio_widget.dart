import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'preferences_icon_audio_model.dart';
export 'preferences_icon_audio_model.dart';

/// Tela destinada ao cadastro das informações da criança que utilizará o app.
class PreferencesIconAudioWidget extends StatefulWidget {
  const PreferencesIconAudioWidget({super.key});

  static String routeName = 'PreferencesIconAudio';
  static String routePath = '/preferencesIconAudio';

  @override
  State<PreferencesIconAudioWidget> createState() =>
      _PreferencesIconAudioWidgetState();
}

class _PreferencesIconAudioWidgetState
    extends State<PreferencesIconAudioWidget> {
  late PreferencesIconAudioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PreferencesIconAudioModel());

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
          backgroundColor: FlutterFlowTheme.of(context).primary,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
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
                    RegisterParentInfoWidget.routeName,
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
                        fontSize: valueOrDefault<double>(
                          FFAppState().fontSize,
                          34.0,
                        ),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: FFAppState().contrast,
                    child: Text(
                      '4/7',
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
                    opacity: FFAppState().contrast,
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Definir preferências',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Nunito Sans',
                          color: Colors.white,
                          fontSize: valueOrDefault<double>(
                            FFAppState().fontSize,
                            64.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: FFAppState().contrast,
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            30.0, 66.0, 0.0, 0.0),
                        child: Text(
                          'Tamanho dos ícones',
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
                                    color: Colors.white,
                                    fontSize: valueOrDefault<double>(
                                      FFAppState().fontSize,
                                      32.0,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Container(
                          width: 400.0,
                          child: Slider.adaptive(
                            activeColor:
                                FlutterFlowTheme.of(context).primaryText,
                            inactiveColor: FlutterFlowTheme.of(context).accent4,
                            min: 0.0,
                            max: 60.0,
                            value: _model.sliderIconSizeValue ??= 30.0,
                            label: _model.sliderIconSizeValue?.toString(),
                            divisions: 6,
                            onChanged: (newValue) {
                              safeSetState(
                                  () => _model.sliderIconSizeValue = newValue);
                            },
                            onChangeEnd: (newValue) async {
                              safeSetState(
                                  () => _model.sliderIconSizeValue = newValue);
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
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            31.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Volume da fala',
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
                                    color: Colors.white,
                                    fontSize: valueOrDefault<double>(
                                      FFAppState().fontSize,
                                      32.0,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Container(
                          width: 400.0,
                          child: Slider.adaptive(
                            activeColor:
                                FlutterFlowTheme.of(context).primaryText,
                            inactiveColor: FlutterFlowTheme.of(context).accent4,
                            min: 0.0,
                            max: 1.0,
                            value: _model.sliderSpeechVolumeValue ??= 1.0,
                            label: _model.sliderSpeechVolumeValue?.toString(),
                            divisions: 10,
                            onChanged: (newValue) async {
                              safeSetState(() =>
                                  _model.sliderSpeechVolumeValue = newValue);
                              FFAppState().audioVolume =
                                  _model.sliderSpeechVolumeValue!;
                              safeSetState(() {});
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: FFAppState().contrast,
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            30.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Tamanho da fonte',
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
                                    color: Colors.white,
                                    fontSize: valueOrDefault<double>(
                                      FFAppState().fontSize,
                                      32.0,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Container(
                          width: 400.0,
                          child: Slider.adaptive(
                            activeColor:
                                FlutterFlowTheme.of(context).primaryText,
                            inactiveColor: FlutterFlowTheme.of(context).accent4,
                            min: 0.0,
                            max: 2.0,
                            value: _model.sliderFontSizeValue ??= 1.0,
                            label: _model.sliderFontSizeValue?.toString(),
                            divisions: 2,
                            onChanged: (newValue) {
                              safeSetState(
                                  () => _model.sliderFontSizeValue = newValue);
                            },
                            onChangeEnd: (newValue) async {
                              safeSetState(
                                  () => _model.sliderFontSizeValue = newValue);
                              await actions.setFontSize(
                                _model.sliderFontSizeValue!,
                                FFAppState().fontSize,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: FFAppState().contrast,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 68.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            PreferencesColorsWidget.routeName,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
