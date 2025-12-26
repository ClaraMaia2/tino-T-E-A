import 'package:google_fonts/google_fonts.dart';
import 'package:tino_t_e_a/auth/firebase_auth/auth_util.dart';
import 'package:tino_t_e_a/flutter_flow/flutter_flow_widgets.dart';
import 'package:tino_t_e_a/widgets/menu_card.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'menu_page_model.dart';
export 'menu_page_model.dart';

class MenuPageWidget extends StatefulWidget {
  const MenuPageWidget({super.key});

  static String routeName = 'MenuPage';
  static String routePath = '/menuPage';

  @override
  State<MenuPageWidget> createState() => _MenuPageWidgetState();
}

class _MenuPageWidgetState extends State<MenuPageWidget> {
  late MenuPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      // key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      floatingActionButton: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.11),
        child: FloatingActionButton.large(
          onPressed: () async {
            context.pushNamed(HelpPageWidget.routeName);
          },
          backgroundColor: FlutterFlowTheme.of(context).primary,
          child: Opacity(
            opacity: FFAppState().contrast,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.help_outline_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
                Text(
                  'Ajuda',
                  style: FlutterFlowTheme.of(context).bodySmall,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
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
      body: SingleChildScrollView(
        child: Opacity(
          opacity: FFAppState().contrast,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: MenuCard(
                  iconPath: 'assets/images/paint-pallet-svgrepo-com.svg',
                  title: 'Cores e contraste',
                  route: () async {
                    context.pushNamed(
                      ColorsContrastPageWidget.routeName,
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
              MenuCard(
                iconPath: 'assets/images/volume-full-svgrepo-com.svg',
                title: 'Fala e volume',
                route: () async {
                  context.pushNamed(
                    SpeechVolumePageWidget.routeName,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 1000),
                      ),
                    },
                  );
                },
              ),
              MenuCard(
                iconPath: 'assets/images/text-size-solid-svgrepo-com.svg',
                title: 'Ícones e textos',
                route: () async {
                  context.pushNamed(
                    IconsTextsPageWidget.routeName,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 1000),
                      ),
                    },
                  );
                },
              ),
              MenuCard(
                iconPath: 'assets/images/logout-svgrepo-com.svg',
                title: 'Sair da conta',
                route: () async {
                  await showGeneralDialog(
                    barrierColor: FlutterFlowTheme.of(context)
                        .primaryText
                        .withValues(alpha: 0.35),
                    context: context,
                    barrierDismissible: true,
                    barrierLabel: 'Sair da conta',
                    transitionDuration: const Duration(seconds: 1),
                    pageBuilder: (context, animation, secondaryAnimation) {
                      return Center(
                        child: Material(
                          color: Colors.transparent,
                          child: ConstrainedBox(
                            constraints: const BoxConstraints(
                              maxHeight: 480,
                              maxWidth: 380,
                            ),
                            child: Container(
                              width: 363.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 1.0,
                                ),
                              ),
                              child: SingleChildScrollView(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    /// TÍTULO
                                    Opacity(
                                      opacity: FFAppState().contrast,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Text(
                                          'Sair da conta',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Nunito Sans',
                                                fontSize: 36.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),

                                    /// TEXTO
                                    Opacity(
                                      opacity: FFAppState().contrast,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            22, 24, 21, 0),
                                        child: Text(
                                          'Você tem certeza que deseja sair da conta?\n\n'
                                          'Sair agora vai fechar sua sessão. '
                                          'Para usar o aplicativo novamente, será necessário fazer login.',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.baloo2(),
                                                fontSize: 20.0,
                                              ),
                                        ),
                                      ),
                                    ),

                                    const SizedBox(height: 32),

                                    /// BOTÃO CANCELAR
                                    Opacity(
                                      opacity: FFAppState().contrast,
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          context.pop();
                                        },
                                        text: 'Cancelar',
                                        options: FFButtonOptions(
                                          width: 320,
                                          height: 56,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.baloo2(),
                                                fontSize: 20,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                          elevation: 4,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ),

                                    const SizedBox(height: 16),

                                    /// BOTÃO CONFIRMAR
                                    Opacity(
                                      opacity: FFAppState().contrast,
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          GoRouter.of(context)
                                              .prepareAuthEvent(true);
                                          await authManager.signOut();
                                          GoRouter.of(context)
                                              .clearRedirectLocation();

                                          if (context.mounted) {
                                            context.pushNamedAuth(
                                              StartPageWidget.routeName,
                                              context.mounted,
                                              ignoreRedirect: true,
                                            );
                                          }
                                        },
                                        text: 'Confirmar',
                                        options: FFButtonOptions(
                                          width: 320,
                                          height: 56,
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                font: GoogleFonts.baloo2(),
                                                fontSize: 20,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                          elevation: 4,
                                          borderRadius:
                                              BorderRadius.circular(8),
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
                    },
                    transitionBuilder:
                        (context, animation, secondaryAnimation, child) {
                      final curvedAnimation = CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeOutCubic,
                      );

                      return FadeTransition(
                        opacity: curvedAnimation,
                        child: ScaleTransition(
                          scale: Tween<double>(begin: 0.95, end: 1.0)
                              .animate(curvedAnimation),
                          child: child,
                        ),
                      );
                    },
                  );
                },
              ),
            ]
                .divide(SizedBox(height: 40.0))
                .addToStart(SizedBox(height: 46.0))
                .addToEnd(SizedBox(height: 15.0)),
          ),
        ),
      ),
    );
  }
}
