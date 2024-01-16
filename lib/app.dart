import 'package:flutter/material.dart';

import 'router/routes.dart';
import 'theme/theme.dart';

class CourseCurrencyScreen extends StatelessWidget {
  const CourseCurrencyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Course Currency',
      theme: theme,
      routes: routes,
    );
  }
}