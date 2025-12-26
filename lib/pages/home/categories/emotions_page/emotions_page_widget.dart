import 'package:tino_t_e_a/widgets/category_home_card.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'emotions_page_model.dart';
export 'emotions_page_model.dart';

class EmotionsPageWidget extends StatefulWidget {
  const EmotionsPageWidget({super.key});

  static String routeName = 'EmotionsPage';
  static String routePath = '/emotionsPage';

  @override
  State<EmotionsPageWidget> createState() => _EmotionsPageWidgetState();
}

class _EmotionsPageWidgetState extends State<EmotionsPageWidget> {
  late EmotionsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmotionsPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

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
                                onPressed: () {},
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
              primary: true,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: sizeOf.width * 0.03),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Opacity(
                      opacity: FFAppState().contrast,
                      child: Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 19.0, 0.0, 0.0),
                          child: Container(
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12),
                                    child: Opacity(
                                      opacity: FFAppState().contrast,
                                      child: Text(
                                        FFAppState().frase.isEmpty
                                            ? 'Selecione um pictograma para começar'
                                            : FFAppState().frase,
                                        textAlign: TextAlign.center,
                                        maxLines: 3,
                                        overflow: TextOverflow.clip,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts
                                                  .atkinsonHyperlegible(),
                                              fontSize: 14.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        FFAppState().update(() {
                                          FFAppState().frase = '';
                                        });
                                      },
                                      text: 'Apagar',
                                      options: FFButtonOptions(
                                        height: 56,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.baloo2(
                                                fontWeight: FontWeight.normal,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                              color: Colors.white,
                                              fontSize: valueOrDefault<double>(
                                                FFAppState().fontSize,
                                                20.0,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                        borderRadius: BorderRadius.circular(10),
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
                      opacity: FFAppState().contrast,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await actions.speakText(
                              FFAppState().frase,
                            );
                          },
                          text: 'Ouvir frase',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 56.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).success,
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
                                  fontSize: valueOrDefault<double>(
                                    FFAppState().fontSize,
                                    20.0,
                                  ),
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
                    Opacity(
                      opacity: FFAppState().contrast,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Opacity(
                              opacity: FFAppState().contrast,
                              child: FlutterFlowIconButton(
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
                                        transitionType:
                                            PageTransitionType.leftToRight,
                                        duration: Duration(milliseconds: 1000),
                                      ),
                                    },
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
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
                      ),
                    ),
                    Opacity(
                      opacity: FFAppState().contrast,
                      child: Text(
                        'Emoções',
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: sizeOf.height * 0.05),
                        child: Column(
                          children: [
                            Wrap(
                              spacing: sizeOf.width * 0.05,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              children: [
                                CategoryHomeCard(
                                  title: 'Feliz',
                                  imagePath: 'assets/images/feliz.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Feliz';
                                    safeSetState(() {});
                                    await actions.speakText('feliz');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Triste',
                                  imagePath: 'assets/images/triste.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Triste';
                                    safeSetState(() {});
                                    await actions.speakText('triste');
                                  },
                                ),
                              ],
                            ),
                            Wrap(
                              spacing: sizeOf.width * 0.05,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              children: [
                                CategoryHomeCard(
                                  title: 'Nojo',
                                  imagePath: 'assets/images/nojo.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Nojo';
                                    safeSetState(() {});
                                    await actions.speakText('nojo');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Medo',
                                  imagePath: 'assets/images/medo.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Medo';
                                    safeSetState(() {});
                                    await actions.speakText('medo');
                                  },
                                ),
                              ],
                            ),
                            Wrap(
                              spacing: sizeOf.width * 0.05,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              children: [
                                CategoryHomeCard(
                                  title: 'Raiva',
                                  imagePath: 'assets/images/bravo.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Raiva';
                                    safeSetState(() {});
                                    await actions.speakText('raiva');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Ansiedade',
                                  imagePath: 'assets/images/ansioso.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Ansiedade';
                                    safeSetState(() {});
                                    await actions.speakText('ansiedade');
                                  },
                                ),
                              ],
                            ),
                            Wrap(
                              spacing: sizeOf.width * 0.05,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              children: [
                                CategoryHomeCard(
                                  title: 'Surpresa',
                                  imagePath: 'assets/images/surpreso.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Surpresa';
                                    safeSetState(() {});
                                    await actions.speakText('surpresa');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Tédio',
                                  imagePath: 'assets/images/entediado.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Tédio';
                                    safeSetState(() {});
                                    await actions.speakText('tedio');
                                  },
                                ),
                              ],
                            ),
                            Wrap(
                              spacing: sizeOf.width * 0.05,
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              direction: Axis.horizontal,
                              children: [
                                CategoryHomeCard(
                                  title: 'Calma',
                                  imagePath: 'assets/images/calmo.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Calma';
                                    safeSetState(() {});
                                    await actions.speakText('calma');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Vergonha',
                                  imagePath: 'assets/images/envergonhado.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Vergonha';
                                    safeSetState(() {});
                                    await actions.speakText('vergonha');
                                  },
                                ),
                              ],
                            ),
                            ].divide(
                            SizedBox(
                              height: sizeOf.height * 0.03,
                            ),
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
      ),
    );
  }
}
