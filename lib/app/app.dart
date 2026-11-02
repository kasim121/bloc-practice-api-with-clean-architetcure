import 'package:blocprac/core/di/injection.dart';
import 'package:blocprac/feature/presentation/bloc/post_event.dart';
import 'package:blocprac/feature/presentation/screens/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// SRP: application shell (theme + root providers).
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => Injection.providePostBloc()..add(FetchPostEvent()),
      child: MaterialApp(
        title: 'SOLID + BLoC Posts',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const PostScreen(),
      ),
    );
  }
}
