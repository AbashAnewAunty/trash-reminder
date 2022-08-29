import 'package:flutter/material.dart';

/// ホーム画面
/// アプリ起動時に表示される
/// 最も近いゴミ出しの日を表示する
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              "今日は",
              style: TextStyle(fontSize: 40),
            ),
            Image.asset("images/mark_gomi_moyaseru.png"),
          ],
        ),
      ),
    );
  }
}
