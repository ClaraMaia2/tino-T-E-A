import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'scholar_page_model.dart';
export 'scholar_page_model.dart';

class ScholarPageWidget extends StatefulWidget {
  const ScholarPageWidget({super.key});

  static String routeName = 'ScholarPage';
  static String routePath = '/scholarPage';

  @override
  State<ScholarPageWidget> createState() => _ScholarPageWidgetState();
}

class _ScholarPageWidgetState extends State<ScholarPageWidget> {
  late ScholarPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScholarPageModel());
  }

  Widget categoryCard({
    required BuildContext context,
    required String title,
    required String imagePath,
    required VoidCallback onTap,
  }) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double cardWidth =
            constraints.maxWidth > 600 ? 220 : constraints.maxWidth / 2 - 20;

        return InkWell(
          onTap: onTap,
          child: SizedBox(
            width: cardWidth,
            child: AspectRatio(
              aspectRatio: 3 / 4,
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondary,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          title,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: FFAppState().fontSize,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 13.0, 0.0, 20.0),
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
                        padding: EdgeInsets.only(
                            top: sizeOf.height * 0.05,
                            bottom: sizeOf.height * 0.14),
                        child: Column(
                          children: [
                            Wrap(
                              spacing: 20,
                              runSpacing: 20,
                              alignment: WrapAlignment.center,
                              children: [
                                categoryCard(
                                  context: context,
                                  title: 'Sala de aula',
                                  imagePath: 'assets/images/sala_de_aula.png',
                                  onTap: () => context
                                      .pushNamed(ClassPageWidget.routeName),
                                ),
                                categoryCard(
                                  context: context,
                                  title: 'Hora do lanche',
                                  imagePath: 'assets/images/lanche.png',
                                  onTap: () => context
                                      .pushNamed(SnackPageWidget.routeName),
                                ),
                              ],
                            ),
                            Wrap(
                              spacing: 20,
                              runSpacing: 20,
                              alignment: WrapAlignment.center,
                              children: [
                                categoryCard(
                                  context: context,
                                  title: 'Recreio',
                                  imagePath: 'assets/images/recreio.png',
                                  onTap: () => context
                                      .pushNamed(RecessPageWidget.routeName),
                                ),
                                categoryCard(
                                  context: context,
                                  title: 'Comunicação com o professor',
                                  imagePath: 'assets/images/professor.png',
                                  onTap: () => context.pushNamed(
                                    CommunicationWithTeacherPageWidget
                                        .routeName,
                                  ),
                                ),
                              ],
                            ),
                            Wrap(
                              spacing: 20,
                              runSpacing: 20,
                              alignment: WrapAlignment.center,
                              children: [
                                categoryCard(
                                  context: context,
                                  title: 'Chegada e saída',
                                  imagePath: 'assets/images/chegada_e_sada.png',
                                  onTap: () => context
                                      .pushNamed(InAndOutPageWidget.routeName),
                                ),
                              ],
                            )
                          ].divide(SizedBox(height: 25.0)),
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
