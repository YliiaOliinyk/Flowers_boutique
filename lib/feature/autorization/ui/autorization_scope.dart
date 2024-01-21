import 'package:flower_boutique/feature/autorization/bloc/autorization_bloc.dart';
import 'package:flower_boutique/feature/autorization/ui/autorization_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AutorizationScope extends StatelessWidget {
  const AutorizationScope({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AutorizationBloc(),
      child: const AutorizationScreen(),
    );
  }
}
