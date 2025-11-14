import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
                        Text(
                          'Supervisão',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Nunito Sans',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
                    child: Container(
                      width: 362.0,
                      height: 80.0,
                      decoration: BoxDecoration(),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed(
                            ColorsContrastPageWidget.routeName,
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 1000),
                              ),
                            },
                          );
                        },
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: FlutterFlowTheme.of(context).secondary,
                          elevation: 4.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    23.0, 10.0, 0.0, 10.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: SvgPicture.asset(
                                    'assets/images/paint-pallet-svgrepo-com.svg',
                                    width: 60.0,
                                    height: 60.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    46.0, 14.0, 0.0, 14.0),
                                child: Text(
                                  'Cores e contraste',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.baloo2(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
                    child: Container(
                      width: 362.0,
                      height: 80.0,
                      decoration: BoxDecoration(),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondary,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  23.0, 10.0, 0.0, 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SvgPicture.asset(
                                  'assets/images/volume-full-svgrepo-com.svg',
                                  width: 60.0,
                                  height: 60.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  46.0, 14.0, 0.0, 14.0),
                              child: Text(
                                'Fala e volume',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.baloo2(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
                    child: Container(
                      width: 362.0,
                      height: 80.0,
                      decoration: BoxDecoration(),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondary,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  23.0, 10.0, 0.0, 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SvgPicture.asset(
                                  'assets/images/text-size-solid-svgrepo-com.svg',
                                  width: 60.0,
                                  height: 60.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  46.0, 14.0, 0.0, 14.0),
                              child: Text(
                                'Ícones e textos',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.baloo2(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
                    child: Container(
                      width: 362.0,
                      height: 80.0,
                      decoration: BoxDecoration(),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: FlutterFlowTheme.of(context).secondary,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  23.0, 10.0, 0.0, 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SvgPicture.asset(
                                  'assets/images/logout-svgrepo-com.svg',
                                  width: 60.0,
                                  height: 60.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  46.0, 14.0, 0.0, 14.0),
                              child: Text(
                                'Sair da conta',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.baloo2(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]
                    .divide(SizedBox(height: 40.0))
                    .addToStart(SizedBox(height: 46.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
