import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:NinjaCard()
  ));
}

class NinjaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:Text('Ninja Id Card'),
        centerTitle:true,
        backgroundColor:Colors.grey,
        elevation:0
      ),
      body:Padding(
        padding:EdgeInsets.fromLTRB(30, 40, 30,0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style:TextStyle(
                color:Colors.grey,
                letterSpacing: 2
              )
            ),
            Text(
                'John Doe',
                style:TextStyle(
                    color:Colors.amber[200],
                    letterSpacing: 2,
                    fontSize:28,
                    fontWeight:FontWeight.bold
                )
            ),
          ],
        )
      )
    );
  }
}