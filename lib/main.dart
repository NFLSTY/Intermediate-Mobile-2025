import 'package:flutter/material.dart';
import 'package:serene/blocs/auth/auth_bloc.dart' show AuthBloc;
import 'package:serene/ui/pages/login_page.dart';
import 'package:serene/ui/pages/chat_page.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void>main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Serene',
        home: const LoginPage(),
        routes: {
          '/login': (context) => const LoginPage(),
          '/chatpage': (context) => const ChatPage(), // used in login_page.dart
        },
      ),
    );
  }
}