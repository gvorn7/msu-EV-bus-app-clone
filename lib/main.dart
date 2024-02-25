import 'package:flutter/material.dart';
import 'package:flutter_login_form/screen/log_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MSU EV BUS',
      theme: ThemeData(
        // textSelectionTheme: GoogleFonts.manropeTextTheme(Theme.of(context).textTheme),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const LogInPage() ,
    );
  }
}
