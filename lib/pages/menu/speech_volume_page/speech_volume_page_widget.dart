import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'speech_volume_page_model.dart';
export 'speech_volume_page_model.dart';

class SpeechVolumePageWidget extends StatefulWidget {
  const SpeechVolumePageWidget({super.key});

  static String routeName = 'SpeechVolumePage';
  static String routePath = '/speechVolumePage';

  @override
  State<SpeechVolumePageWidget> createState() => _SpeechVolumePageWidgetState();
}

class _SpeechVolumePageWidgetState extends State<SpeechVolumePageWidget> {
  late SpeechVolumePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpeechVolumePageModel());

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      'Fala e volume',
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
                          'AJUSTAR VOLUME',
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
                  // ===== SLIDER VOLUME =====
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(19.0, 15.0, 19.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: FFAppState().contrast,
                          child: FaIcon(
                            FontAwesomeIcons.volumeLow,
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
                                      FlutterFlowTheme.of(context).accent3,
                                  min: 0.0,
                                  max: 1.0,
                                  value: _model.sliderAudioVolumeValue ??=
                                      FFAppState().audioVolume,
                                  label:
                                      _model.sliderAudioVolumeValue?.toString(),
                                  divisions: 100,
                                  onChanged: (newValue) {
                                    safeSetState(() => _model
                                        .sliderAudioVolumeValue = newValue);
                                  },
                                  onChangeEnd: (newValue) async {
                                    safeSetState(() => _model
                                        .sliderAudioVolumeValue = newValue);
                                    FFAppState().audioVolume =
                                        _model.sliderAudioVolumeValue!;
                                    safeSetState(() {});
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        Opacity(
                          opacity: FFAppState().contrast,
                          child: FaIcon(
                            FontAwesomeIcons.volumeHigh,
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
                  // ===== REPETIR FALA =====
                  Opacity(
                    opacity: FFAppState().contrast,
                    child: Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            19.0, 50.0, 0.0, 0.0),
                        child: Text(
                          'REPETIR FALA',
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
                  Opacity(
                    opacity: FFAppState().contrast,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(19.0, 15.0, 19.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              FFAppState().enableRepeatText = true;
                              safeSetState(() {});
                            },
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.check,
                                  size: FFAppState().iconSize,
                                  color: FFAppState().enableRepeatText
                                      ? FlutterFlowTheme.of(context).success
                                      : FlutterFlowTheme.of(context).accent4,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  FFAppState().enableRepeatText == true
                                      ? 'Ativado'
                                      : 'Ativar',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Baloo 2',
                                        fontSize: FFAppState().fontSize,
                                        color: FFAppState().enableRepeatText
                                            ? FlutterFlowTheme.of(context)
                                                .success
                                            : FlutterFlowTheme.of(context)
                                                .accent4,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () {
                              FFAppState().enableRepeatText = false;
                              safeSetState(() {});
                            },
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.xmark,
                                  size: FFAppState().iconSize,
                                  color: !FFAppState().enableRepeatText
                                      ? FlutterFlowTheme.of(context).error
                                      : FlutterFlowTheme.of(context).accent4,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  FFAppState().enableRepeatText == false
                                      ? 'Desativado'
                                      : 'Desativar',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Baloo 2',
                                        fontSize: FFAppState().fontSize,
                                        color: !FFAppState().enableRepeatText
                                            ? FlutterFlowTheme.of(context).error
                                            : FlutterFlowTheme.of(context)
                                                .accent4,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ].divide(SizedBox(width: 66.0)),
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
      ),
    );
  }
}
