import 'package:flutter/material.dart';
import 'package:trash_reminder/view/resister/components/calender_dialog.dart';

class ResisterGarbageCollectionDayListTile extends StatelessWidget {
  const ResisterGarbageCollectionDayListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        children: [
          Container(
            width: 100,
            color: Colors.orange,
            child: Center(
              child: Text("収集日"),
            ),
          ),
          Expanded(
            child: Text("第１・第３　水曜日"),
          ),
          TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => CalenderDialog(),
              );
            },
            child: Center(
              child: Text("設定"),
            ),
          )
        ],
      ),
    );
  }
}
