import 'package:go_router/go_router.dart';
import 'package:serene/ui/pages/splash_page.dart';
import 'package:serene/ui/pages/register_page.dart';
import 'package:serene/ui/pages/login_page.dart';
import 'package:serene/ui/pages/chat_page.dart';
part 'route_names.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: Routenames.splash,
    builder: (context, state) => const SplashPage()
  ),
  GoRoute(
    path: '/login',
    name: Routenames.login,
    builder: (context, state) => const LoginPage(),
    routes: [
      GoRoute(
        path: 'signup',
        name: Routenames.signup,
        builder:(context, state) => const RegisterPage()
      )
    ]
  ),
  GoRoute(
    path: '/chatpage',
    name: Routenames.chatpage,
    builder: (context, state) => const ChatPage()
  )
]);