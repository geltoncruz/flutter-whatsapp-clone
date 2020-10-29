import 'package:flutter/material.dart';
import 'package:whatsapp/pages/whatsAppCamera.dart';

class AppBarAndTabs extends StatelessWidget {
  String title = "Whatsapp";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0XFF075E54),
        accentColor: Color(0XFF25D366),
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
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
              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("New group"),
                    value: 0,
                  ),
                  PopupMenuItem(
                    child: Text("New Difusion"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("WhatsApp Web"),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text('Importants messages'),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text('Settings'),
                    value: 4,
                  ),
                ],
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chat'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Call'),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBarView(children: [
              Text('Camera'),
              Text('Menssagens'),
              Text('Status'),
              Text('Chamadas'),
            ]),
          ),
        ),
      ),
    );
  }
}
