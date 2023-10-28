import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:firebase_storage/firebase_storage.dart' as fs;
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:gorin_test_project/responses/responses.dart';
import 'package:gorin_test_project/services/services.dart';
import 'package:gorin_test_project/utils/utils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:permission_handler/permission_handler.dart' as perm;

part 'file_repository.dart';
part 'display_picture_repository.dart';

const _logger = LoggingService.instance;
