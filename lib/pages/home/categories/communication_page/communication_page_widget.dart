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
import 'communication_page_model.dart';
export 'communication_page_model.dart';

class CommunicationPageWidget extends StatefulWidget {
  const CommunicationPageWidget({super.key});

  static String routeName = 'CommunicationPage';
  static String routePath = '/communicationPage';

  @override
  State<CommunicationPageWidget> createState() =>
      _CommunicationPageWidgetState();
}

class _CommunicationPageWidgetState extends State<CommunicationPageWidget> {
  late CommunicationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommunicationPageModel());
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
                                  buttonSize: 50.0,
                                  fillColor:
                                      FlutterFlowTheme.of(context).primary,
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
                            textStyle:
                                FlutterFlowTheme.of(context).titleSmall.override(
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
                        'Comunicação',
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
                                  title: 'Sim',
                                  imagePath: 'assets/images/sim.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Sim';
                                    safeSetState(() {});
                                    await actions.speakText('sim');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Não',
                                  imagePath: 'assets/images/no.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Não';
                                    safeSetState(() {});
                                    await actions.speakText('não');
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
                                  title: 'Por favor',
                                  imagePath: 'assets/images/por_favor.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Por favor';
                                    safeSetState(() {});
                                    await actions.speakText('por favor');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Obrigado(a)',
                                  imagePath: 'assets/images/obrigado.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Obrigado(a)';
                                    safeSetState(() {});
                                    await actions.speakText('obrigado(a)');
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
                                  title: 'Preciso de ajuda',
                                  imagePath:
                                      'assets/images/preciso_de_ajuda.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Preciso de ajuda';
                                    safeSetState(() {});
                                    await actions.speakText('preciso de ajuda');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Posso?',
                                  imagePath: 'assets/images/poder.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Posso?';
                                    safeSetState(() {});
                                    await actions.speakText('posso?');
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
                                  title: 'Não entendo',
                                  imagePath: 'assets/images/no_entendo.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Não entendo';
                                    safeSetState(() {});
                                    await actions.speakText('não entendo');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Como está?',
                                  imagePath: 'assets/images/como_est.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Como está?';
                                    safeSetState(() {});
                                    await actions.speakText('como está?');
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
                                  title: 'Olá',
                                  imagePath: 'assets/images/cumprimentar.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Olá';
                                    safeSetState(() {});
                                    await actions.speakText('olá');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Tchau',
                                  imagePath: 'assets/images/tchau.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Tchau';
                                    safeSetState(() {});
                                    await actions.speakText('tchau');
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
                                  title: 'Desculpa',
                                  imagePath: 'assets/images/me_desculpa.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Desculpa';
                                    safeSetState(() {});
                                    await actions.speakText('desculpa');
                                  },
                                ),
                                CategoryHomeCard(
                                  title: 'Parar',
                                  imagePath: 'assets/images/parar.png',
                                  speak: () async {
                                    FFAppState().frase =
                                        '${FFAppState().frase} Parar';
                                    safeSetState(() {});
                                    await actions.speakText('parar');
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
