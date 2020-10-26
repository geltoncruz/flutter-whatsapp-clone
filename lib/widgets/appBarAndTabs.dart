import 'package:flutter/material.dart';

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
        length: 3,
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
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text('Mensages'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Chamadas'),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Text('Menssagens'),
            Text('Status'),
            Text('Chamadas'),
          ]),
        ),
      ),
    );
  }
}
