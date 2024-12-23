import 'package:flutter/material.dart';

class Anjith extends StatefulWidget {
  const Anjith({super.key});

  @override
  State<Anjith> createState() => _AnjithState();
}

class _AnjithState extends State<Anjith> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100.0,
              color: Colors.greenAccent,
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(16.0),
              child: Text('Hello Flutter!',style: TextStyle(color: Colors.white),),

            ),
            Container(
              margin: EdgeInsets.all(16.0),
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(
                  width: 10,
                  color: Colors.red.shade300,

                ),
              ),
            ),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border(
                  left: BorderSide(color: Colors.green,width: 5),
                  right: BorderSide(color: Colors.black,width: 10),
                  top: BorderSide(color: Colors.red,width: 20),
                  bottom: BorderSide(color: Colors.purple,width: 30),
                ),
              ),
              ),
        Container(
          width: 300,
          height: 200,
          margin: EdgeInsets.all(16),

          decoration: BoxDecoration(
            color: Colors.greenAccent,
            border: Border.all(
              width: 10,
              color: Colors.red.shade300,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        Container(
          width: 300,
          height: 200,
          margin: EdgeInsets.all(16),

          decoration: BoxDecoration(
            color: Colors.greenAccent,
            border: Border.all(
              width: 10,
              color: Colors.red.shade300,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.30)),
          ),
        ),

        Container(
          width: 300,
          height: 200,
          margin: EdgeInsets.all(16),

          decoration: BoxDecoration(
            color: Colors.greenAccent,
            border: Border.all(
              width: 10,
              color: Colors.red.shade300,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10,)),
          ),
        ),
        Container(
          width: 300,
          height: 200,
          margin: EdgeInsets.all(16),

          decoration: BoxDecoration(
            color: Colors.greenAccent,
            border: Border.all(width: 10,color: Colors.red.shade300,),
            borderRadius: BorderRadius.horizontal(left: Radius.circular(50),right: Radius.circular(10))
          ),
        ),
        Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            border: Border.all(width: 10,color: Colors.red.shade300,),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(40),
            ),
          ),
        ),
        Container(
          width: 300,
          height: 200,
          margin: EdgeInsets.all(16),

          decoration: BoxDecoration(
            color: Colors.greenAccent,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(10, 20)
              )
            ]
          ),
        ),
        Container(
          width: 300,
          height: 200,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                offset: Offset(10,20),
                blurRadius: 30,
              )
            ],
          ),
            ),
            Container(
              width: 300,
              height: 200,
              margin: EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: Colors.greenAccent,
                gradient: LinearGradient(
                  colors: [Colors.amber,Colors.red],
                begin: Alignment.topLeft,
                  end: Alignment.bottomRight
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(10,20),
                    blurRadius: 30,
                  )
                ],
              ),
            ),
            Container(
              width: 300,
              height: 200,
              margin: EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: Colors.greenAccent,
                gradient: LinearGradient(
                    colors: [Colors.amber,Colors.red],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
                ),
                image: DecorationImage(
                    image: NetworkImage(
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.cbr.com%2Fsosuke-aizen-bleach-most-evil-villain%2F&psig=AOvVaw24TrBcAUX0E9C3tiKv6zZa&ust=1733828769071000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCICauNDFmooDFQAAAAAdAAAAABAE"),
                        fit: BoxFit.cover,


                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(10, 20),
                    blurRadius: 30,
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
