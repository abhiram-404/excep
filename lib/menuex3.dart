import 'package:flutter/material.dart';

class PopupMenuButtonExmaple1 extends StatefulWidget {
  const PopupMenuButtonExmaple1({super.key});

  @override
  _PopupMenuButtonExmaple1State createState()=>
      _PopupMenuButtonExmaple1State();
}

class _PopupMenuButtonExmaple1State extends State<PopupMenuButtonExmaple1> {
  var selectedItem=" ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppMaking.com"),
        centerTitle: true,
        actions: [
          PopupMenuButton(onSelected: (value){
            setState(() {
              selectedItem=value.toString();
            });
            print(value);
            Navigator.pushNamed(context, value.toString());
          },itemBuilder: (BuildContext bc){
            return const [
              PopupMenuItem(
                  child: Text("Hello"),
              value: '/hello',
              ),
              PopupMenuItem(
                child: Text("About"),
              value: '/about',
              ),
              PopupMenuItem(
                child: Text("Contact"),
              value: '/contact',
              )
            ];
          })
        ],
      ),
      body: Center(
        child: Text(selectedItem),
      ),
    );
  }
}
