import 'package:amonguschat/features/auth/screens/login_view.dart';
import 'package:amonguschat/features/auth/screens/register_view.dart';
import 'package:amonguschat/features/chat/screens/chat_view.dart';
import 'package:amonguschat/features/select_room/screens/select_room_view.dart';
import 'package:amonguschat/features/shared/utils/router/routes.dart';
import 'package:amonguschat/main.dart';
import 'package:flutter/material.dart';

class ScreenRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.main:
        return MaterialPageRoute(
          settings: const RouteSettings(name: Routes.main),
          builder: (context) => const Main(),
        );

      case Routes.register:
        return MaterialPageRoute(
          settings: const RouteSettings(name: Routes.register),
          builder: (context) => const RegisterView(),
        );

      case Routes.login:
        return MaterialPageRoute(
          settings: const RouteSettings(name: Routes.login),
          builder: (context) => const LoginView(),
        );

      case Routes.selectRoom:
        return MaterialPageRoute(
          settings: const RouteSettings(name: Routes.selectRoom),
          builder: (context) => const SelectRoomView(),
        );

      case Routes.chatRoom:
        return MaterialPageRoute(
          settings: const RouteSettings(name: Routes.chatRoom),
          builder: (context) => const ChatView(),
        );
    }
    return null;
  }
}
