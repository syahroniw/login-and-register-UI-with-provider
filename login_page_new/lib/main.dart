import 'package:flutter/material.dart';
import 'package:login_page_new/screen/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:login_page_new/provider/auth_provider.dart';
import 'package:login_page_new/provider/imagepick_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ImagepickProvider())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          darkTheme: ThemeData(
              brightness: Brightness.dark, primarySwatch: Colors.green),
          themeMode: ThemeMode.dark,
          home: const LoginScreen()),
    );
  }
}
