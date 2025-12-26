import 'package:tino_t_e_a/widgets/category_info_card.dart';
import 'package:tino_t_e_a/widgets/info_card.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'help_page_model.dart';
export 'help_page_model.dart';

class HelpPageWidget extends StatefulWidget {
  const HelpPageWidget({super.key});

  static String routeName = 'HelpPage';
  static String routePath = '/helpPage';

  @override
  State<HelpPageWidget> createState() => _HelpPageWidgetState();
}

class _HelpPageWidgetState extends State<HelpPageWidget> {
  late HelpPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HelpPageModel());
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
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
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
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                    'Ajuda',
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
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
                InfoCard(
                  iconPath: 'assets/images/puzzle-svgrepo-com_(2).svg',
                  title: 'Montar frases',
                  description: 'Escolha pictogramas para montar uma frase',
                  speechText:
                      'montar frases. escolher pictogramas para montar uma frase',
                ),
                InfoCard(
                  iconPath: 'assets/images/volume-max-svgrepo-com.svg',
                  title: 'Ouvir a frase',
                  description:
                      'Toque no botão "Ouvir frase" para ouvir a frase completa',
                  speechText:
                      'ouvir a frase. toque no botão ouvir frase para ouvir a frase completa',
                ),
                InfoCard(
                  iconPath: 'assets/images/recycle-svgrepo-com.svg',
                  title: 'Trocar pictogramas',
                  description:
                      'Clique no botão apagar para deletar um pictograma. Depois selecione outro pictograma',
                  speechText:
                      'trocar pictogramas. clique no botão apagar para deletar um pictograma. depois selecione outro pictograma',
                ),
                // ===== CATEGORIAS DOS PICTOGRAMAS =====
                Opacity(
                  opacity: FFAppState().contrast,
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(19.0, 50.0, 0.0, 0.0),
                      child: Text(
                        'CATEGORIAS DOS PICTOGRAMAS',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                CategoryInfoCard(
                  imagePath: 'assets/images/emocoes.png',
                  title: 'Emoções',
                  description: 'Para dizer como estou me sentindo',
                  speechText: 'emoções. para dizer como estou me sentindo',
                ),
                CategoryInfoCard(
                  imagePath: 'assets/images/quero.png',
                  title: 'Desejo',
                  description: 'Para dizer o que eu quero ou preciso',
                  speechText: 'desejo. para dizer o que eu quero ou preciso',
                ),
                CategoryInfoCard(
                  imagePath: 'assets/images/pessoas.png',
                  title: 'Relações',
                  description:
                      'Para dizer quem está comigo ou com quem quero falar',
                  speechText:
                      'relações. para dizer quem está comigo ou com quem quero falar',
                ),
                CategoryInfoCard(
                  imagePath: 'assets/images/comunicacao.png',
                  title: 'Comunicação',
                  description: 'Para dizer frases ou palavras do dia-a-dia',
                  speechText:
                      'comunicação. para dizer frases ou palavras do dia-a-dia',
                ),
                CategoryInfoCard(
                  imagePath: 'assets/images/sala_de_aula.png',
                  title: 'Sala de aula',
                  description:
                      'Para falar sobre atividades e materiais da aula',
                  speechText:
                      'sala de aula. para falar sobre atividades e materiais da aula',
                ),
                CategoryInfoCard(
                  imagePath: 'assets/images/lanche.png',
                  title: 'Hora do lanche',
                  description: 'Para escolher o que eu quero comer ou beber',
                  speechText:
                      'hora do lanche. para escolher o que eu quero comer ou beber',
                ),
                CategoryInfoCard(
                  imagePath: 'assets/images/recreio.png',
                  title: 'Recreio',
                  description:
                      'Para pedir brincadeiras e dizer o que quero fazer no recreio',
                  speechText:
                      'recreio. para pedir brincadeiras e dizer o que quero fazer no recreio',
                ),
                CategoryInfoCard(
                  imagePath: 'assets/images/professor.png',
                  title: 'Comunicação com o professor',
                  description:
                      'Para pedir ajuda, fazer perguntas ou avisar algo ao professor',
                  speechText:
                      'comunicação com o professor. para pedir ajuda, fazer perguntas ou avisar algo ao professor',
                ),
                CategoryInfoCard(
                  imagePath: 'assets/images/chegada_e_sada.png',
                  title: 'Chegada e saída',
                  description: 'Para falar quando chego e quando vou embora',
                  speechText:
                      'chegada e saída. para falar quando chego e quando vou embora',
                ),
                // ===== DICAS DE USO =====
                Opacity(
                  opacity: FFAppState().contrast,
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(19.0, 50.0, 0.0, 0.0),
                      child: Text(
                        'DICAS DE USO (RESPONSÁVEIS)',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 15.0, 16.0, 0.0),
                      child: Text(
                        '- Use frases curtas ao começar.\n- Permita a criança explorar os pictogramas.\n- Use o áudio do aplicativo para reforçar comunicação.\n- Mostre como montar frases simples (como por exemplo, “Posso brincar?”).\n- Deixe a criança repetir quantas vezes precisar.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                            ),
                      ),
                    ),
                  ),
                ),
                // ===== CONTATO DE SUPORTE =====
                Opacity(
                  opacity: FFAppState().contrast,
                  child: Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(19.0, 50.0, 0.0, 0.0),
                      child: Text(
                        'SUPORTE',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 15.0, 16.0, 0.0),
                      child: Text(
                        'email.suporte@dominio.com\nVersão: 1.0',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                            ),
                      ),
                    ),
                  ),
                ),
              ]
                  .addToStart(SizedBox(height: 15.0))
                  .addToEnd(SizedBox(height: 25.0)),
            ),
          ),
        ),
      ),
    );
  }
}
