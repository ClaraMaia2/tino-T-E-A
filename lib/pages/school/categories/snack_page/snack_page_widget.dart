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
import 'snack_page_model.dart';
export 'snack_page_model.dart';

class SnackPageWidget extends StatefulWidget {
  const SnackPageWidget({super.key});

  static String routeName = 'SnackPage';
  static String routePath = '/snackPage';

  @override
  State<SnackPageWidget> createState() => _SnackPageWidgetState();
}

class _SnackPageWidgetState extends State<SnackPageWidget> {
  late SnackPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SnackPageModel());
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
              primary: false,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: sizeOf.width * 0.03),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
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
                                  ScholarPageWidget.routeName,
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
                        'Hora do lanche',
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
                                  title: 'Quero comer',
                                  imagePath: 'assets/images/comer.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Quero comer';
                                    safeSetState(() {});
                                    await actions.speakText('Quero comer');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Quero suco',
                                  imagePath: 'assets/images/suco.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Quero suco';
                                    safeSetState(() {});
                                    await actions.speakText('Quero suco');
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
                                  title: 'Mais, por favor',
                                  imagePath: 'assets/images/mais.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Mais, por favor';
                                    safeSetState(() {});
                                    await actions.speakText('Mais, por favor');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Não gosto disso',
                                  imagePath: 'assets/images/no_gosto_disso.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Não gosto disso';
                                    safeSetState(() {});
                                    await actions.speakText('Não gosto disso');
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
                                  title: 'Está gostoso!',
                                  imagePath: 'assets/images/bom.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Está gostoso!';
                                    safeSetState(() {});
                                    await actions.speakText('Está gostoso!');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Posso dividir?',
                                  imagePath: 'assets/images/dividir.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Posso dividir?';
                                    safeSetState(() {});
                                    await actions.speakText('Posso dividir?');
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
                                  title: 'Quero trocar',
                                  imagePath: 'assets/images/trocar.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Quero trocar';
                                    safeSetState(() {});
                                    await actions.speakText('Quero trocar');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Já terminei',
                                  imagePath: 'assets/images/acabar.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Já terminei';
                                    safeSetState(() {});
                                    await actions.speakText('Já terminei');
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
                                  title: 'Posso jogar fora?',
                                  imagePath: 'assets/images/jogar_fora.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Posso jogar fora?';
                                    safeSetState(() {});
                                    await actions
                                        .speakText('Posso jogar fora?');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Posso lavar minhas mãos?',
                                  imagePath: 'assets/images/lavar_as_mos.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Posso lavar minhas mos?';
                                    safeSetState(() {});
                                    await actions
                                        .speakText('Posso lavar minhas mãos?');
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
