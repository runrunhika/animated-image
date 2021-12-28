import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double containerWidth = 250;
  double containerHeight = 100;
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: VerticalDivider(
                  color: Colors.white,
                  thickness: 17,
                ),
              ),
              Container(
                child: VerticalDivider(
                  color: Colors.white,
                  thickness: 100,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 80),
                child: VerticalDivider(
                  color: Colors.white,
                  thickness: 17,
                ),
              ),
            ],
          ),
          Center(
            child: GestureDetector(
              child: AnimatedContainer(
                duration: Duration(seconds: 4),
                width: containerWidth,
                height: containerHeight,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2)),
                child: Image.asset(
                  'assets/image.jpg',
                  fit: BoxFit.cover,
                  width: 2,
                ),
              ),
            
              onTap: () {
                setState(() {
                  clicked = !clicked;
                  if(!clicked){
                    containerWidth = MediaQuery.of(context).size.width;
                    containerWidth = MediaQuery.of(context).size.height / 2;
                  } else{
                    containerWidth = 250;
                    containerHeight = 200;
                  }
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
