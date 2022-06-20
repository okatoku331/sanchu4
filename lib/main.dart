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
              //ToDo アップデート情報ページに飛ぶ
            },
          ),
        ],
      ),
      body: Center(
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        //Todo　易占クイズにページに飛ぶ
                      },
                      child: const Text(
                        '易占クイズに挑戦する',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 60,
              child: Padding(
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
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 44,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.tealAccent,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: 44,
                              width: 174,
                              child: TextButton(
                                child: const Text(
                                  'yyyy/mm/dd',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                onPressed: () {
                                  //ToDo　生年月日入力画面に飛ぶ
                                },
                              )),
                          SizedBox(
                            width: 70,
                            child: TextButton(
                              child: const Text(
                                'メモ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                              onPressed: () {
                                //ToDo　メモ入力画面に飛ぶ
                              },
                            ),
                          ),
                          SizedBox(
                            height: 24,
                            width: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                elevation: 0,
                                shadowColor: Colors.red,
                              ),
                              child: const Icon(Icons.bar_chart, size: 16),
                              onPressed: () {
                                //ToDo　今日の運勢画面に飛ぶ
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SizedBox(
                            height: 24,
                            width: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                elevation: 8,
                                shadowColor: Colors.red,
                              ),
                              child: const Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                              onPressed: () {
                                //ToDo　出力画面に飛ぶ
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 0,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
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
    );
  }
}
