import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tajbhi TBA',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Tajbhi TBA'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _texts = "Start";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter<=33 && _counter >0){
        _texts = "Alhumdulliah";
      }else if(_counter<=66 && _counter >33){
        _texts = "Allah Akbar";
      }
      else if(_counter<=99 && _counter >66){
        _texts = "Bismiallah";
      }
      else if(_counter<0){
        _texts = "Something Wrong...";
      }else if(_counter==0){
        _texts = "Start";
      }else{
        _texts = "Astakferullah";
      }
    });
  }
  void _descrementCounter() {
    setState(() {
      _counter--;
      if(_counter<=33 && _counter >0){
        _texts = "Alhumdulliah";
      }else if(_counter<=66 && _counter >33){
        _texts = "Allah Akbar";
      }
      else if(_counter<=99 && _counter >66){
        _texts = "Bismiallah";
      }
      else if(_counter<0){
        _texts = "Something Wrong...";
      }else if(_counter==0){
        _texts = "Start";
      }else{
        _texts = "Astakferullah";
      }
    });
  }
  void _reset() {
    setState(() {
      _counter=0;
      if(_counter<=33 && _counter >0){
        _texts = "Alhumdulliah";
      }else if(_counter<=66 && _counter >33){
        _texts = "Allah Akbar";
      }
      else if(_counter<=99 && _counter >66){
        _texts = "Bismiallah";
      }
      else if(_counter<0){
        _texts = "Something Wrong...";
      }else if(_counter==0){
        _texts = "Start";
      }else{
        _texts = "Astakferullah";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background_image.jpeg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 40, left: 25, right: 25),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Text(
                  '$_texts',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                  color: Colors.green
                  ),
                ),

              ),
              Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 40, left: 25, right: 25),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Text(
                  '$_counter',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                  color: Colors.red
                  ),
                ),

              ),
              SizedBox(height: 40,),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: (){
                      _incrementCounter();
                    },
                    child: Text(
                        'Add +'
                    )),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: (){
                      _descrementCounter();
                    },
                    child: Text(
                        'SUB -'
                    )),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(onPressed: (){
                  _reset();
                },
                    child: Text(
                        'Reset'
                    )),
              ),
            ],
          )
      ),
    );
  }
}
