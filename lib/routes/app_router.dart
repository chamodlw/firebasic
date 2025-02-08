import 'package:auto_route/auto_route.dart';
import 'package:fire2/homepage.dart';
import 'package:fire2/login.dart';
import 'package:fire2/signup.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
 List<AutoRoute> get routes => [
  AutoRoute(page: LoginRoute.page , initial: true),
  AutoRoute(page: SignupRoute.page),
  AutoRoute(page: HomeRoute.page),
   
 ];

} 