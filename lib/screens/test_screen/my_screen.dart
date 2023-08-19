import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sefen_bloc/training/home_bloc.dart';
import 'package:sefen_bloc/training/home_event.dart';
import 'package:sefen_bloc/training/home_state.dart';

import 'test_screen.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (context) => HomeBloc(),
          ),
        ],
        child: const MyScreen(),
      ),
    ),
  );
}

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  int count = 0;
  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is IncrementState) {
          count = state.count;
        } else if (state is DecrementState) {
          count = state.count;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Training Bloc',
            ),
          ),
          body: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<HomeBloc>(context)
                            .add(DecrementEvent(count: count));
                      },
                      child: const Icon(Icons.exposure_minus_1),
                    ),
                    const SizedBox(width: 30),
                    Text(
                      "$count",
                      style: const TextStyle(fontSize: 80),
                    ),
                    const SizedBox(width: 30),
                    ElevatedButton(
                      onPressed: () {
                        BlocProvider.of<HomeBloc>(context)
                            .add(IncrementEvent(count: count));
                      },
                      child: const Icon(Icons.exposure_plus_1),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: textController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Your Mail',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TestScreen(text: textController.text),
                      ),
                    );
                  },
                  child: const Text("Click To Go"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
