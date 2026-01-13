import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tino_t_e_a/flutter_flow/flutter_flow_theme.dart';
import 'package:tino_t_e_a/flutter_flow/flutter_flow_widgets.dart';

class CategoryHomeCard extends StatelessWidget {
  const CategoryHomeCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.speak,
  });

  final String imagePath;
  final String title;
  final VoidCallback speak;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 200,
        height: 260,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondary,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: FlutterFlowTheme.of(context).primaryText,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Nunito Sans',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                width: 153,
                height: 153,
                fit: BoxFit.cover,
              ),
            ),
            const Spacer(),
            FFButtonWidget(
              onPressed: speak,
              text: 'Escolher',
              options: FFButtonOptions(
                width: 131,
                height: 40,
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      font: GoogleFonts.baloo2(),
                      color: Colors.white,
                      fontSize: 20,
                    ),
                elevation: 4,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
