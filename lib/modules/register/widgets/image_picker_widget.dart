import 'package:flutter/material.dart';

import 'dart:io';
import 'package:image_picker/image_picker.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_strings.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key, this.onImagePicked});

  final ValueChanged<File>? onImagePicked;

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker _picker = ImagePicker();
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final XFile? picked = await _picker.pickImage(
      source: source,
      imageQuality: 80,
    );
    if (picked != null) {
      final file = File(picked.path);
      setState(() => _image = file);
      widget.onImagePicked?.call(file);
    }
  }

  void _showSourceSheet() {
    showModalBottomSheet(
      context: context,
      builder: (sheetContext) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Choose from gallery'),
              onTap: () {
                Navigator.pop(sheetContext);
                _pickImage(ImageSource.gallery);
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Take a photo'),
              onTap: () {
                Navigator.pop(sheetContext);
                _pickImage(ImageSource.camera);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showSourceSheet,
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.primaryColor, width: 1),
        ),
        clipBehavior: Clip.antiAlias,
        child: _image != null
            ? Image.file(_image!, fit: BoxFit.cover)
            : const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.image_rounded,
                    size: 32,
                    color: AppColors.primaryColor,
                  ),
                  SizedBox(height: 16),
                  Text(
                    AppStrings.uploadProfilePicture,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
