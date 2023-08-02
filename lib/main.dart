import 'package:change_your_mind/bloc/activity_bloc/activity_bloc.dart';
import 'package:change_your_mind/data/repository/activity_repository.dart';
import 'package:change_your_mind/presentation/home_screen.dart';
import 'package:change_your_mind/screens/chat_screen.dart';
import 'package:change_your_mind/screens/login_screen.dart';
import 'package:change_your_mind/screens/registration_screen.dart';
import 'package:change_your_mind/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // This is the last thing you need to add.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiBlocProvider(providers: [
    BlocProvider<ActivityBloc>(
        create: (BuildContext context) => ActivityBloc(ActivityRepository()))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'Are you bored?',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.purple,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
