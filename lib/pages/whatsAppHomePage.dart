import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/appBarAndTabs.dart';

class WhatsAppHomePage extends StatelessWidget {
  String title;

  WhatsAppHomePage(title) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: AppBarAndTabs(),
      ),
    );
  }
}
