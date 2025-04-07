import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../features/auth/presentation/login_screen.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/auth/presentation/register_screen.dart';
import '../../features/account/presentation/account_settings_screen.dart';
import '../../features/navigation/main_navigation_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Tigre Oficial',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialRoute: FirebaseAuth.instance.currentUser == null ? '/login' : '/main',
      routes: {
        '/login': (_) => const LoginScreen(),
        '/register': (_) => const RegisterScreen(),
        '/main': (_) => const MainNavigationScreen(), // rota principal com o footer
        // '/home': (_) => const AccountSettingsScreen(),
        // '/home': (_) => const HomeScreen(),
      },
    );
  }
}
