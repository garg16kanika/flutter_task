import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Widegts/course.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                child: Text('K'),
              ),
              accountName: Text('Kanika'),
              accountEmail: Text('Kanikagarg967@gmail.com'),
            ),
            Divider(height: 40),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, 'home');
              },
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, 'About_us');
              },
              leading: Icon(Icons.list),
              title: Text('Know About us'),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              leading: Icon(Icons.door_back_door),
              title: Text('LOG OUT'),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: Items.length,
          itemBuilder: ((context, index) {
            return Course(index);
          })),
    );
  }
}
