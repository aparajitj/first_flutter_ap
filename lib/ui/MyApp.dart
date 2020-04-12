import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class wis extends StatefulWidget {
  @override
  _wisState createState() => _wisState();
}

class _wisState extends State<wis> {

  int _index=0;
  List q= ["Live as if you were to die tomorrow. Learn as if you were to live forever.",
    "That which does not kill us makes us stronger.",
    "Be who you are and say what you feel, because those who mind don’t matter and those who matter don’t mind.",
    "We must not allow other people’s limited perceptions to define us.",
    "Do what you can, with what you have, where you are."
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
        body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Center(
                child:Container(
                      width:350,
                      height:200,
                      margin:EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        color:Colors.black,
                        borderRadius:BorderRadius.circular(20)

                      ),
                      child: Center(child: Text(q[_index],style: TextStyle(color: Colors.red.shade900,fontStyle: FontStyle.italic, fontSize: 20,)))),
                )),
                Divider(thickness: 2.3,),
                Padding(
                  padding: const EdgeInsets.only(top:18.0),
                  child: FlatButton.icon(onPressed: _displayQuote, icon: Icon(Icons.wb_sunny),
                      label: Text("Next quote",
                      style:TextStyle(
                        color:Colors.black,
                        fontSize: 30,
                      )),
                  color: Colors.red,),
                ),
                Spacer()
              ],
            )
        )
    );
  }

  void _displayQuote() {
    setState(() {
      if (_index!=4)
      _index++;
      else
        _index=0;

    });

  }
}

class Bizcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BizCard"),
        ),
        backgroundColor: Colors.blueGrey,
        body: Container(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                _getCard(),
                _getAvatar()
              ],
            )
        )
    );
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(60.0),
      decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(20.5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Aparajit Jha",
              style: TextStyle(fontSize: 20.9,
                  fontWeight: FontWeight.w500,
                  color: Colors.red)),
          Text("AJ.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.person_outline),
              Text("Twitter : @Aj")
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.redAccent, width: 1.2),
        image: DecorationImage(
            image: NetworkImage("https://picsum.photos/300/300"),
            fit: BoxFit.cover),

      ),

    );
  }
}

class ScaffoldExample extends StatelessWidget {


  _tapButton() {
    debugPrint("Tapped button");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold"),
        centerTitle: true,
        backgroundColor: Colors.green.shade900,
        actions: <Widget>[
          Center(child: Text("kjklj"),),
          IconButton(
            icon: Icon(Icons.email), onPressed: () => debugPrint("abcd"),),
          IconButton(icon: Icon(Icons.access_alarms), onPressed: (_tapButton))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlue,
          child: Icon(Icons.memory),
          onPressed: () => debugPrint("floating action button pressed")),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), title: Text("First")),
        BottomNavigationBarItem(
            icon: Icon(Icons.access_time), title: Text("Second")),

      ], onTap: (int index) => debugPrint("$index"),),
      backgroundColor: Colors.amberAccent.shade700,

      body: Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CB()
            /* InkWell(
    child: Text("xyz",
    style: TextStyle(fontSize: 80)),
        onDoubleTap: ()=>debugPrint("Double tap"),

    )*/

          ],
        ),

      ),
    );
  }
}

class CB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          final sb = SnackBar(
            backgroundColor: Colors.blue,
            content: Text("ytuai"),);
          Scaffold.of(context).showSnackBar(sb);
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(5.0)
          ),
          child: Text("Press"),
        )
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.deepOrange,
        child: Center(
            child: Text(
              "kljlkjlk",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 23.4,
                  fontStyle: FontStyle.italic
              ),
            )
        )
    );
  }
}