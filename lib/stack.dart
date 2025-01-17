import 'package:flutter/material.dart';

class Omen extends StatelessWidget {
  const Omen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("Flutter Stack Widget Example"),
          ),
          body: Center(
            child: Stack(
              fit: StackFit.passthrough,
              //overflow: Overflow.visible,

              children: <Widget>[
                Container(
                  height: 300,
                  width: 400,
                  color: Colors.green,
                  child: Center(
                    child: Text('Top Widget: Green',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: Container(
                    height: 100,
                    width: 150,
                    color: Colors.blue,
                    child: Center(
                      child: Text('Middle Widget',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 30,
                    left: 20,
                    child: Container(
                      height: 100,
                      width: 150,
                      color: Colors.orange,
                      child: Center(
                        child: Text('Bottom Widget',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )
                ),
              ],
            ),
          )
      );

  }
}
