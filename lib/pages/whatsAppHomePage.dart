import 'package:flutter/material.dart';

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
