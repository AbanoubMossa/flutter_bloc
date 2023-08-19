import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sefen_bloc/blocs/first_screen/first_screen_bloc.dart';
import 'package:sefen_bloc/screens/socand_screen/socand_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FirstScreenBloc, FirstScreenState>(
        listener: (context, state) {
      if (state is NavigationToSocandScreenState) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => SocandScreen(text: state.textValue)));
      }
    }, builder: (context, state) {
      return Scaffold(
        appBar: AppBar(title: const Text("First Screen")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller,
              ),
              MaterialButton(
                  onPressed: () {
                    BlocProvider.of<FirstScreenBloc>(context)
                        .add(NavigationToSocandScreenEvent(
                      textValue: controller.text,
                    ));
                  },
                  child: const Text("Click")),
            ],
          ),
        ),
      );
    });
  }
}
