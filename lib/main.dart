import 'package:flutter/material.dart';
import 'package:google_clone/views/pages/mobile_screen_layout.dart';
import 'package:google_clone/layouts/responsive_layout_screen.dart';
import 'package:google_clone/views/pages/web_screen_layout.dart';
import 'package:google_clone/shared/config/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: AppColors.backgroundColor),
      home: const ResponsiveLayoutScreen(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
