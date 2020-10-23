import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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

class WhatsAppHomePage extends StatelessWidget {
  String title;

  WhatsAppHomePage(title) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Color(0XFFFFFFFF),
            ),
            onPressed: () => {
              print('Search tapped'),
            },
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Color(0XFFFFFFFF),
            ),
            onPressed: () => {
              print('More option tapped'),
            },
          )
        ],
      ),
      body: Center(
        child: Text('Whatsapp'),
      ),
    );
  }
}
