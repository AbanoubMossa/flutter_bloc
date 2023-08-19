import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sefen_bloc/blocs/home/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int value = 0;
  var textController = TextEditingController();
  var formKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is IncrementState) {
          value = state.value;
        } else if (state is DecrementState) {
          value = state.value;
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Scaffold(
              appBar: AppBar(
                title: const Text(
                  'BLOC',
                ),
              ),
              body: Padding(
                padding: const EdgeInsetsDirectional.only(top: 20.0),
                child: Center(
                  child: Column(
                    children: [
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                          Colors.blue,
                        )),
                        onPressed: () {
                          BlocProvider.of<HomeBloc>(context)
                              .add(DecrementEvent(value: value));
                        },
                        child: const Icon(
                          Icons.exposure_minus_1,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Text('$value'),
                      const SizedBox(height: 40),
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue)),
                        onPressed: () {
                          BlocProvider.of<HomeBloc>(context)
                              .add(IncrementEvent(value: value));
                        },
                        child: const Icon(
                          Icons.exposure_plus_1,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              )),
        );
      },
    );
  }
}
