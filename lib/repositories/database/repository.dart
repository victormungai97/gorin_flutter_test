import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gorin_test_project/models/models.dart';
import 'package:gorin_test_project/responses/responses.dart';
import 'package:gorin_test_project/services/services.dart';
import 'package:gorin_test_project/utils/utils.dart';
import 'package:tuple/tuple.dart';

part 'database_repository.dart';
part 'firestore_database_repository.dart';

const _logger = LoggingService.instance;
