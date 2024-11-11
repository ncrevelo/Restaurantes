import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(RestaurantReviewApp());
}

class RestaurantReviewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Review',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,  // Oculta el banner de Debug
      home: LoginScreen(),
    );
  }
}
