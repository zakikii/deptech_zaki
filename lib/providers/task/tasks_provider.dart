import 'package:deptech_zaki/shared/data/data.dart';
import 'package:deptech_zaki/providers/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final tasksProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});
