import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  static const routePath = '/error-screen';
  static const routeName = 'error-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('Error screen'),
      ),
    );
  }
}
