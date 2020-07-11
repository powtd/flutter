import 'package:flutter/material.dart';

class ListDisplay extends StatefulWidget {
  @override
  State createState() => new DyanmicList();
}

class DyanmicList extends State<ListDisplay> {
  List<String> litems = [];
  List<String> c = [];
  final TextEditingController eCtrl = new TextEditingController();
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      //appBar: new AppBar(title: new Text("Dynamic Demo"),),
      body: new Column(
        children: <Widget>[
          new TextField(
            controller: eCtrl,
            onSubmitted: (text) {
              litems.add(text);
              eCtrl.clear();
              setState(() {});
            },
          ),
          RaisedButton(
            
            onPressed: () {
              litems.add("7");
              c.add("600");
              eCtrl.clear();
              setState(() {});
            },
            child: const Text('Enabled 1', style: TextStyle(fontSize: 20)),
          ),
          RaisedButton(
           onPressed: () {
              litems.add("42");
              eCtrl.clear();
              setState(() {});
            },
            child: const Text('Enabled 2', style: TextStyle(fontSize: 20)),
          ),

//------------------------------------------------------------------------------


          new Expanded(
            child: new ListView.builder
              (
                itemCount: litems.length,
                itemBuilder: (BuildContext ctxt, int Index) {
                  return new cartCard(litems[Index],c[Index]);
                }
            )
        )
        ],
      )
    );
  }
}

//-----------------------------------------------------------------------

class cartCard extends StatelessWidget {
  final String _p;
  final String _c;
  
  //final String _c;
  //final String _img;
  //final String _capacity;

 
  const cartCard(this._p,this._c, {Key key})
      : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        right: 5,
        left: 5,
      ),
      child: Card(
        color: Color(0xFFE5E5E5),
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          child: Container(
            width: 160,
            height: 200,
            child: Column(children: <Widget>[
              
              Text(
                '$_p THB',
                style: TextStyle(
                  color: Color(0xFF0065C1),
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              Text(
                '$_c THB',
                style: TextStyle(
                  color: Color(0xFF0065C1),
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              
              
              
              
            ]
            ),
          ),
        ),
      ),
    );
  }
}
