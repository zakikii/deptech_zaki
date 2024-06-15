import 'package:deptech_zaki/shared/data/models/ui/my_theme.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@riverpod
MyTheme theme(ThemeRef ref) {
  return MyTheme();
}
