import 'package:example/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_layout/responsive_ui_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            ResponsiveConfig(designScreenWidth: 375, designScreenHeight: 812)
                .init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Responsive UI Example',
              // theme: AppTheme.lightTheme,
              home: WelcomeScreen(),
            );
          },
        );
      },
    );
  }
}
