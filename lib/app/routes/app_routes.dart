import 'package:deptech_zaki/app/routes/routes_location.dart';
import 'package:deptech_zaki/app/routes/routes_provider.dart';
import 'package:deptech_zaki/page/create_task/create_task_screen.dart';
import 'package:deptech_zaki/page/home/home_screen.dart';
import 'package:deptech_zaki/page/login/screen/login_screen.dart';
import 'package:go_router/go_router.dart';

final appRoutes = [
  GoRoute(
    path: RouteLocation.login,
    parentNavigatorKey: navigationKey,
    builder: LoginScreen.builder,
  ),
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigationKey,
    builder: HomeScreen.builder,
  ),
  GoRoute(
    path: RouteLocation.createTask,
    parentNavigatorKey: navigationKey,
    builder: CreateTaskScreen.builder,
  ),
];
