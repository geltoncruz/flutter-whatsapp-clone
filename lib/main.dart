import 'package:flutter/material.dart';
import 'package:whatsapp/pages/whatsAppHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp Clone',
      theme: ThemeData(
        primaryColor: Color(0XFF075E54),
        accentColor: Color(0XFF25D366),
      ),
      home: WhatsAppHomePage('WhatsApp'),
    );
  }
}
