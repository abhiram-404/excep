import 'package:flutter/material.dart';
import 'package:untitled_1/image.dart';
import 'package:untitled_1/tabbar.dart';

class Draw extends StatelessWidget {
  const Draw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WhatsApp')),
      body: Center(
        child: Text(''
            'A drawer is an invisible side screen',
        style: TextStyle(fontSize: 20.0),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("Kyoraku Shunsui"), accountEmail: Text("kyorakushunsui366@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.purpleAccent,
              child: Text('A',style: TextStyle(fontSize: 40.0),
              ),
            ),
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text("Chats"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.sports_volleyball_rounded),
              title: Text("Status"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Ebin(),));
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Calls"),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
