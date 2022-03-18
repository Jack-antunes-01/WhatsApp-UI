import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/mobile/mobile_screen.dart';
import 'package:whatsapp_ui/pages/web/web_screen.dart';
import 'package:whatsapp_ui/responsive/responsible_layout.dart';
import 'package:whatsapp_ui/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreen(),
        webScreenLayout: WebScreen(),
      ),
    );
  }
}
