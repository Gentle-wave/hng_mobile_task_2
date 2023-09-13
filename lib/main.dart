import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/cv_view.dart';
import 'models/cv_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppNavigator(),
    );
  }
}

class AppNavigator extends StatefulWidget {
  const AppNavigator({super.key});

  @override
  State<AppNavigator> createState() => _AppNavigatorState();
}

class _AppNavigatorState extends State<AppNavigator> {
  bool _showSplash = true;
  final cvModel = CVModel();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showSplash = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _showSplash
        ? SplashScreen()
        : CVViewScreen(
            cvModel: cvModel,
            onUpdate: (updatedData) {
              setState(() {
                cvModel.updateCV(updatedData);
              });
            },
          );
  }
}
