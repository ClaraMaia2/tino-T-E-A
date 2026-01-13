import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tino_t_e_a/flutter_flow/flutter_flow_theme.dart';
import 'package:tino_t_e_a/flutter_flow/flutter_flow_util.dart';

enum ProfileImageType {
  none,
  gallery,
  camera,
  predefined,
}

class ProfileAvatar extends StatefulWidget {
  const ProfileAvatar({super.key});

  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  ProfileImageType _type = ProfileImageType.none;
  File? _imageFile;
  String? _assetPath;
  final ImagePicker _picker = ImagePicker();

  final avatars = [
    'assets/avatars/duck.svg',
    'assets/images/alligator.svg',
    'assets/avatars/cat.svg',
    'assets/avatars/giraffe.svg',
  ];

  Future<void> _pickFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _type = ProfileImageType.gallery;
        _imageFile = File(image.path);
        _assetPath = null;
      });
    }
  }

  Future<void> _pickFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      setState(() {
        _type = ProfileImageType.camera;
        _imageFile = File(image.path);
        _assetPath = null;
      });
    }
  }

  void _selectPredefined(String asset) {
    setState(() {
      _type = ProfileImageType.predefined;
      _imageFile = null;
      _assetPath = asset;
    });

    Navigator.pop(context);
  }

  void _removePhoto() {
    setState(() {
      _type = ProfileImageType.none;
      _imageFile = null;
      _assetPath = null;
    });

    Navigator.pop(context);
  }

  void _openPredefinedSelector() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            24,
          ),
        ),
      ),
      builder: (_) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: avatars.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemBuilder: (_, index) {
              return GestureDetector(
                onTap: () => _selectPredefined(avatars[index]),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    border: Border.all(
                      color: _assetPath == avatars[index]
                          ? FlutterFlowTheme.of(context).primaryBackground
                          : Colors.black,
                      width: _assetPath == avatars[index] ? 3 : 1.5,
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(999),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: SvgPicture.asset(
                        avatars[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _openProfilePhotoOptions() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            24,
          ),
        ),
      ),
      builder: (_) => _AvatarOptionsSheet(
        onNone: _removePhoto,
        onGallery: _pickFromGallery,
        onCamera: _pickFromCamera,
        onPredefined: () {
          Navigator.pop(context);
          _openPredefinedSelector();
        },
      ),
    );
  }

  Widget _buildAvatarContent() {
    switch (_type) {
      case ProfileImageType.gallery:
      case ProfileImageType.camera:
        return ClipOval(
          child: Image.file(
            _imageFile!,
            width: 222,
            height: 222,
            fit: BoxFit.cover,
          ),
        );
      case ProfileImageType.predefined:
        return ClipOval(
          child: SvgPicture.asset(
            _assetPath!,
            width: 222,
            height: 222,
            fit: BoxFit.cover,
          ),
        );
      case ProfileImageType.none:
        return const Icon(
          Icons.person,
          size: 190,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 21.0, 0.0, 0.0),
        child: GestureDetector(
          onTap: _openProfilePhotoOptions,
          child: Container(
            width: 222.0,
            height: 222.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              shape: BoxShape.circle,
              border: Border.all(
                color: FlutterFlowTheme.of(context).primaryText,
                width: 2.0,
              ),
            ),
            alignment: Alignment.center,
            child: Opacity(
              opacity: FFAppState().contrast,
              child: _buildAvatarContent(),
            ),
          ),
        ),
      ),
    );
  }
}

class _AvatarOptionsSheet extends StatelessWidget {
  const _AvatarOptionsSheet({
    required this.onNone,
    required this.onGallery,
    required this.onCamera,
    required this.onPredefined,
  });

  final VoidCallback onNone;
  final VoidCallback onGallery;
  final VoidCallback onCamera;
  final VoidCallback onPredefined;

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: sizeOf.height * 0.01,
        children: [
          _OptionButton(
            icon: Icons.person_rounded,
            label: "Sem foto de perfil",
            onTap: onNone,
          ),
          _OptionButton(
            icon: Icons.photo_rounded,
            label: "Escolher imagem da galeria",
            onTap: onGallery,
          ),
          _OptionButton(
            icon: Icons.camera_alt_rounded,
            label: "Tirar foto",
            onTap: onCamera,
          ),
          _OptionButton(
            icon: Icons.pets_rounded,
            label: "Escolher personagem para foto de perfil",
            onTap: onPredefined,
          ),
        ],
      ),
    );
  }
}

class _OptionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _OptionButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 56),
          backgroundColor: FlutterFlowTheme.of(context).primary,
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: onTap,
        icon: Icon(
          icon,
          size: valueOrDefault<double>(
            FFAppState().iconSize,
            50.0,
          ),
        ),
        label: Text(
          label,
          style: FlutterFlowTheme.of(context).titleSmall.override(
                font: GoogleFonts.baloo2(
                  fontWeight: FontWeight.normal,
                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                ),
                color: Colors.white,
                fontSize: valueOrDefault<double>(
                  FFAppState().fontSize,
                  20.0,
                ),
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
              ),
        ),
      ),
    );
  }
}
