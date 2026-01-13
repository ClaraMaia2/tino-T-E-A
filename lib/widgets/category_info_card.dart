import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tino_t_e_a/app_state.dart';
import 'package:tino_t_e_a/custom_code/actions/speak_text.dart' as actions;
import 'package:tino_t_e_a/flutter_flow/flutter_flow_theme.dart';
import 'package:tino_t_e_a/flutter_flow/flutter_flow_widgets.dart';

class CategoryInfoCard extends StatelessWidget {
  const CategoryInfoCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.speechText,
  });

  final String imagePath;
  final String title;
  final String description;
  final String speechText;

  @override
  Widget build(BuildContext context) {
    final double maxWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 180,
        ),
        width: maxWidth > 400 ? 400 : double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondary,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: FFAppState().contrast,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        imagePath,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Opacity(
                      opacity: FFAppState().contrast,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: FFAppState().fontSize,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            description,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  font: GoogleFonts.baloo2(),
                                  fontSize: FFAppState().fontSize - 6,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Opacity(
                opacity: FFAppState().contrast,
                child: FFButtonWidget(
                  onPressed: () async {
                    await actions.speakText(speechText);
                  },
                  text: 'Escutar explicação',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 56,
                    color: FlutterFlowTheme.of(context).success,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.baloo2(),
                          color: Colors.white,
                          fontSize: FFAppState().fontSize,
                        ),
                    elevation: 4,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
