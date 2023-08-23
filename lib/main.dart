import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sefen_bloc/blocs/first_screen/first_screen_bloc.dart';
import 'package:sefen_bloc/screens/home_screen/home_screen.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MultiBlocProvider(
      providers: [
        BlocProvider<FirstScreenBloc>(create: (context) => FirstScreenBloc())
      ],
      child: const HomeScreen(),
    ),
  ));
}
