import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final styleTitle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(image: NetworkImage('https://i.pinimg.com/originals/ca/68/8d/ca688dcdd1218f6ca5b1af6a355211c3.jpg'),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Row(
              children: <Widget>[

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Carreterra en montaña', style: styleTitle,),
                      SizedBox(height: 7.0,),
                      Text('Guatemala, aaahh no cierto', style: styleSubTitle,)
                    ],
                  ),
                ),

                Icon(Icons.star, color: Colors.red, size: 30.0,),
                Text('41', style: TextStyle(fontSize: 20.0),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
