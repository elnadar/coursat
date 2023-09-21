import 'package:coursat/theme/custom_theme.dart';
import 'package:flutter/material.dart';

import 'features/courses_flow/courses_flow.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: CustomTheme.darkTheme(context),
      home: const CoursesFlow(),
    );
  }
}
