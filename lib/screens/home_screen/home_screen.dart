import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sefen_bloc/blocs/first_screen/first_screen_bloc.dart';
import 'package:sefen_bloc/blocs/first_screen/first_screen_event.dart';
import 'package:sefen_bloc/blocs/first_screen/first_screen_state.dart';
import 'package:sefen_bloc/screens/first_screen/first_screen.dart';
import 'package:sefen_bloc/screens/fourth_screen/fourth_screen.dart';
import 'package:sefen_bloc/screens/second_screen/second_screen.dart';
import 'package:sefen_bloc/screens/therd_screen/therd_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  TextEditingController therdController = TextEditingController();
  TextEditingController fourthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FirstScreenBloc, FirstScreenState>(
      listener: (context, state) {
        if (state is NavigationToFirstScreensState) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FirstScreen(
              text: firstController.text,
            );
          }));
        }
        if (state is NavigationToSecondScreenState) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return SecondScreen(
                text: secondController.text,
              );
            }),
          );
        }
        if (state is NavigationToTherdScreenState)  {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TherdScreen(text: therdController.text);
          }));
        }
        if (state is NavigationToFourthScreenState) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FourthScreen(text: fourthController.text);
          }));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Home Screen',
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: defaultTextFormField(controller: firstController),
                    ),
                    const SizedBox(width: 10),
                    defaultButton(
                      text: "Click 1",
                      onTap: () {
                        BlocProvider.of<FirstScreenBloc>(context).add(
                          NavigationToFirstScreensEvent(
                              firstText: firstController.text),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: defaultTextFormField(controller: secondController),
                    ),
                    const SizedBox(width: 10),
                    defaultButton(
                      text: 'Click 2',
                      onTap: () {
                        BlocProvider.of<FirstScreenBloc>(context).add(
                          NavigationToSecondScreenEvent(
                              text: secondController.text),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                        child:
                            defaultTextFormField(controller: therdController)),
                    const SizedBox(width: 10),
                    defaultButton(
                        text: "Click 3",
                        onTap: () {
                          BlocProvider.of<FirstScreenBloc>(context).add(
                              NavigationToTherdScreenEvent(
                                  text: therdController.text));
                        })
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: defaultTextFormField(controller: fourthController),
                    ),
                    const SizedBox(width: 10),
                    defaultButton(
                        text: "Click 4",
                        onTap: () {
                          BlocProvider.of<FirstScreenBloc>(context).add(
                            NavigationToFourthScreenEvent(
                                text: fourthController.text),
                          );
                        })
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget defaultTextFormField({
    required TextEditingController controller,
  }) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        labelText: "Enter your Mail",
        border: OutlineInputBorder(),
      ),
    );
  }

  Widget defaultButton({
    Color color = Colors.teal,
    required String text,
    required Function() onTap,
  }) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
