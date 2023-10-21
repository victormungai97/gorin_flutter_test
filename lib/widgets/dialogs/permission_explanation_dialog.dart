import 'package:flutter/material.dart';

class PermissionExplanationDialog extends StatelessWidget {
  const PermissionExplanationDialog({
    super.key,
    this.permission = 'feature',
  });

  final String permission;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(height: 25),
          CircleAvatar(
            backgroundColor: Colors.indigo.shade900.withOpacity(.55),
            child: const Icon(Icons.lock_open, color: Colors.white, size: 28),
            radius: 40,
          ),
          const SizedBox(height: 18),
          const Text(
            "Feature Permission Required",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            "Permission to access the device's $permission is needed to proceed.\nKindly accept this in the app settings.",
            style: const TextStyle(fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                icon: Icon(Icons.done),
                label: Text('OK'),
                onPressed: () => Navigator.pop(context, true),
              ),
              const SizedBox(width: 12),
              ElevatedButton.icon(
                onPressed: () => Navigator.pop(context, false),
                label: Text('Cancel'),
                icon: Icon(Icons.cancel),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
