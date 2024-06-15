import 'package:deptech_zaki/shared/data/datasource/task_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final taskDatasourceProvider = Provider<TaskDatasource>((ref) {
  return TaskDatasource();
});
