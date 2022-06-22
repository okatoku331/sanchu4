import 'package:flutter/material.dart';

class Update extends StatelessWidget {
  const Update({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'アップデート情報',
          style: TextStyle(
            color: Colors.pinkAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('自己紹介'),
                    trailing: Icon(Icons.navigate_next),
                  ),
                ),
                Divider(
                  color: Colors.blue,
                ),
                //ElevatedButton(
                //onPressed: () {Navigator.pop(context);},
                //child: Text('戻る'),
                //)
              ],
            ),
          ),
          Container(
            height: 8,
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 30,
          ),
        ],
      ),
    );
  }
}
