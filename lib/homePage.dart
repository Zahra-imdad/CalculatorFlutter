import 'package:flutter/material.dart';

class homePage extends StatefulWidget {

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var num1=0,num2=0,sum=0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void add(){
    setState(() {
      num1= int.parse(t1.text);
      num2= int.parse(t2.text);
      sum=num1+num2;
    });
  }
  void subtract(){
    setState(() {
      num1= int.parse(t1.text);
      num2= int.parse(t2.text);
      sum=num1-num2;
    });
  }
  void multi(){
    setState(() {
      num1= int.parse(t1.text);
      num2= int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void divide(){
    setState(() {
      num1= int.parse(t1.text);
      num2= int.parse(t2.text);
      sum=num1~/num2;
    });
  }
  void clear(){
    setState(() {
      t1.text="0";
      t2.text="0";
      sum=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Enter Number"),
              controller: t2,
            ),
            Padding(padding: const EdgeInsets.only(top: 20)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("ADD"),
                    color: Colors.cyanAccent,
                    onPressed: ()=>{add()},
                  ),
                  new MaterialButton(
                    child: new Text("SUBTRACT"),
                    color: Colors.cyanAccent,
                    onPressed: ()=>{subtract()},
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("MULTIPLY"),
                    color: Colors.cyanAccent,
                    onPressed: ()=>{multi()},
                  ),
                  new MaterialButton(
                    child: new Text("DIVIDE"),
                    color: Colors.cyanAccent,
                    onPressed: ()=>{divide()},
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: new Text("OUTPUT: $sum",style: new TextStyle(fontSize: 20,color: Colors.redAccent,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: new  MaterialButton(
                child: new Text("CLEAR"),
                height: 50,
                minWidth: 90,
                color: Colors.black87,
                textColor: Colors.white,
                onPressed: ()=>{clear()},
              ),
            )
          ],
          ),
        )
      ),
    );
  }
}
