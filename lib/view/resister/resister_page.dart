import 'package:flutter/material.dart';
import 'package:trash_reminder/view/resister/components/resister_garbage_collection_day_list_tile.dart';

/// ゴミ出しの日を登録する画面
class ResisterPage extends StatelessWidget {
  const ResisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: SingleChildScrollView(
        child: Column(
          children: [
           ResisterGarbageCollectionDayListTile(),
            ResisterGarbageCollectionDayListTile(),
            ResisterGarbageCollectionDayListTile(),
            ResisterGarbageCollectionDayListTile(),
            ResisterGarbageCollectionDayListTile(),
          ],
        ),
      ),
    );
  }

  Widget _resisterTrashDateBox() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Column(
        children: [
          Text("一般ごみ"),
          SizedBox(
            height: 50,
            child: ListWheelScrollView(
              itemExtent: 30,
              children: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(5),
                  child: Text("日曜日"),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(5),
                  child: Text("日曜日"),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(5),
                  child: Text("日曜日"),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(5),
                  child: Text("日曜日"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
