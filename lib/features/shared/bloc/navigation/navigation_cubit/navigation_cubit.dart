import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationInitial());

  void pushNamed(
    BuildContext context,
    String route,
  ) {
    Navigator.of(context).pushNamed(route);
  }

  void pushNamedAndRemoveUntil(
    BuildContext context,
    String route,
  ) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      route,
      (route) => false,
    );
  }

  void pop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
