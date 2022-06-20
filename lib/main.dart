import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
          //primarySwatch: Colors.green,
          ),
      home: const MyHomePage(title: '天運三柱推命'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //int _counter = 0;

  /*void _incrementCounter() {
    setState(() {
     // _counter++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('天運三柱推命',
            style: TextStyle(
              color: Colors.pinkAccent,
              fontWeight: FontWeight.bold,
            )),
        actions: [
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Next page',
            onPressed: () {
              //TODO
            },
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 44,
                  decoration: BoxDecoration(
                      color: Colors.tealAccent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.blue,
                        width: 1.0,
                      )),
                ),
              ),
              Container(
                height: 60,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '天運の年を算出するには、yyyy/mm/dd ? をタップして、生年月日を入力後、＞ボタンをタップして下さい。',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 280,
                child: Container(),
              ),
              Expanded(flex: 2, child: Image.asset('images/main/gogyou1.png')),
              Container(
                color: Colors.black,
                height: 8,
              ),
              Container(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
