import 'package:amonguschat/features/auth/bloc/auth_bloc/auth_bloc.dart';
import 'package:amonguschat/features/auth/screens/login_view.dart';
import 'package:amonguschat/features/select_room/screens/select_room_view.dart';
import 'package:amonguschat/features/shared/bloc/navigation/navigation_cubit/navigation_cubit.dart';
import 'package:amonguschat/features/shared/screens/loading_view.dart';
import 'package:amonguschat/features/shared/utils/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => NavigationCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Main(),
        onGenerateRoute: ScreenRouter.onGenerateRoute,
      ),
    ),
  );
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  void initState() {
    context.read<AuthBloc>().add(AuthInitializeEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is AuthLoggedOutState) {
          return const LoginView();
        } else if (state is AuthLoggedInState) {
          return const SelectRoomView();
        } else {
          return const LoadingView();
        }
      },
    );
  }
}
