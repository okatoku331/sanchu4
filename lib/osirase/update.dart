import 'package:flutter/material.dart';
import 'package:sanchu4/osirase/profile.dart';
import 'package:sanchu4/osirase/update1.dart';
import 'package:sanchu4/osirase/update2.dart';
import 'package:sanchu4/osirase/update2a.dart';
import 'package:sanchu4/osirase/update3.dart';
import 'package:sanchu4/osirase/update3a.dart';

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
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('第3.1版　コンセプト変更によるデザインの変更。（2022/4/18 更新)'),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Update3a(),
                          ));
                    },
                  ),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text(
                        '第3版　今日の運勢がわかるようになりました。「易占検定」を追加しました。（2021/8/8 更新)'),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Update3(),
                          ));
                    },
                  ),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('第2.1版　軽微な修正（2021/4/18 更新)'),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Update2a(),
                          ));
                    },
                  ),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('第2版　天運の年がわかるようになりました。（2021/3/31 更新)'),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Update2(),
                          ));
                    },
                  ),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text(
                        '第1版　生年月日を入力し、日干を算出し、おおよその性格を表示します。(2021/2/22 公開)'),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Update1(),
                          ));
                    },
                  ),
                ),
                const Divider(
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: const Text('プロフィール'),
                    trailing: const Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Profile(),
                          ));
                    },
                  ),
                ),
                /*Divider(
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text('練習'),
                    trailing: Icon(Icons.navigate_next),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KyouUnsei2(),
                          ));
                    },
                  ),
                ),*/
                const Divider(
                  color: Colors.blue,
                ),
                //ListTile(
                //  title: Text(' '),
                //),
                /*AdmobBanner(
                    adUnitId: AdMobService().getBannerAdUnitId(),
                    adSize: AdmobBannerSize(
                      width: MediaQuery.of(context).size.width.toInt(),
                      height: AdMobService().getHeight(context).toInt(),
                      name: 'SMART_BANNER',
                    )),*/
                //ListTile(
                //  title: Text(''),
                //),
                ElevatedButton(
                  child: const Text('戻る'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 8,
          ),

          //バナー広告追加
          //if (banner == null)
          const SizedBox(height: 50), // Ads
          //else
          // SizedBox(
          //   height: 50,
          //  child: AdWidget(ad: banner),
          // ),

          //バナー広告ここまで

          Container(
            height: 30,
          ),
        ],
      ),
    );
  }
}
