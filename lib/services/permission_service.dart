import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:gorin_test_project/widgets/widgets.dart';
import 'package:permission_handler/permission_handler.dart';

import 'logging_service.dart';

/// Service for permission purposes
class PermissionService {
  static const _logger = LoggingService.instance;

  /// Observe and ask for access to feature on device
  static Future<bool> request(
    Permission permission,
    BuildContext context,
  ) async {
    final perm = permission.toString();
    final flag = perm.split('.').last;
    try {
      return permission.status.then((status) async {
        if (status.isGranted) return true;

        // User will never see permission dialog and can only allow by
        // approving in app settings
        if (status.isPermanentlyDenied) {
          final accepted = await explanation(context, flag);
          if (accepted) await AppSettings.openAppSettings();
          return false;
        }

        if (status.isDenied || status.isRestricted || status.isLimited) {
          return permission.request().then((permissionStatus) async {
            final granted = permissionStatus.isGranted;

            if (!granted) {
              return explanation(context, flag).then((accepted) async {
                if (accepted) return request(permission, context);
                return false;
              });
            }

            return granted;
          });
        }

        return false;
      });
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'Permission request error',
        stackTrace: stackTrace,
      );
    }
    return false;
  }

  /// Describe why a permission is needed
  static Future<bool> explanation(BuildContext context, String flag) async {
    try {
      if (!context.mounted) return false;
      final result = await showDialog<bool>(
        context: context,
        builder: (_) => Dialog(
          child: PermissionExplanationDialog(permission: flag),
        ),
      );
      return (result ?? false);
    } catch (error, stackTrace) {
      await _logger.log(
        error,
        label: 'Permission explanation error',
        stackTrace: stackTrace,
      );
    }
    return false;
  }
}
