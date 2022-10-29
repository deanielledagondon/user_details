import 'package:flutter/material.dart';
import 'package:form_validation/form_screen.dart';
import 'package:form_validation/display_details.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Activity #4',
      theme: ThemeData(
          primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      routes: {
      '/':(context) => const DisplayDetails(),
      '/second': (context) => const FormScreen()
       },
    );
  }
}

