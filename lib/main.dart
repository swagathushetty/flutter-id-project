import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:NinjaCard()
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

 int ninjaLevel=0;
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
      floatingActionButton:FloatingActionButton(
        onPressed:():{
          setState((){
            ninjaLevel+=1;
          })
      },
        child:Icon(Icons.add),
        backgroundColor:Colors.grey[800]
      ),
      body:Padding(
        padding:EdgeInsets.fromLTRB(30, 40, 30,0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage:AssetImage('assets/thumb.jpg'),
                radius:40
              ),
            ),
            Divider(
              height:60,
              color:Colors.grey[800]
            ),
            Text(
              'Name',
              style:TextStyle(
                color:Colors.grey,
                letterSpacing: 2
              )
            ),
            SizedBox(height:10),
            Text(
                'John Doe',
                style:TextStyle(
                    color:Colors.amber[200],
                    letterSpacing: 2,
                    fontSize:28,
                    fontWeight:FontWeight.bold
                )
            ),
            SizedBox(height:30),
            Text(
                'Current  Level',
                style:TextStyle(
                    color:Colors.grey,
                    letterSpacing: 2
                )
            ),
            SizedBox(height:10),
            Text(
                '$ninjaLevel',
                style:TextStyle(
                    color:Colors.amber[200],
                    letterSpacing: 2,
                    fontSize:28,
                    fontWeight:FontWeight.bold
                )
            ),
            SizedBox(height:30),
            Row(
              children:[
                Icon(
                  Icons.email,
                  color:Colors.grey[400]
                ),
                Text('swagathasd@mail.com')
              ]
            )
          ],
        )
      )
    );
  }
}
class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  int counter=1;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

