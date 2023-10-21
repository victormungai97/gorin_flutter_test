import 'package:flutter/material.dart';

class ImagePickerDialog extends StatelessWidget {
  const ImagePickerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.secondary;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          const Text(
            'Select your Profile Picture',
            style: TextStyle(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: color,
                  textStyle: const TextStyle(fontWeight: FontWeight.w600),
                  elevation: 0,
                ),
                onPressed: () => Navigator.pop(context, 'camera'),
                icon: Icon(Icons.camera, color: color),
                label: const Text('Use Camera'),
              ),
              SizedBox(width: 25),
              TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: color,
                  textStyle: const TextStyle(fontWeight: FontWeight.w600),
                  elevation: 0,
                ),
                onPressed: () => Navigator.pop(context, 'gallery'),
                icon: Icon(Icons.image, color: color),
                label: const Text('Use Gallery'),
              ),
            ],
          ),
        ],
        mainAxisSize: MainAxisSize.min,
      ),
    );
  }
}
