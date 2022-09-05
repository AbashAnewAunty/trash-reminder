import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

/// カレンダーダイアログ
/// ゴミ収集日登録に使用
class CalenderDialog extends StatefulWidget {
  const CalenderDialog({Key? key}) : super(key: key);

  @override
  State<CalenderDialog> createState() => _CalenderDialogState();
}

class _CalenderDialogState extends State<CalenderDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: SingleChildScrollView(
            child: TableCalendar(
              firstDay: DateTime.now(),
              lastDay: DateTime.now(),
              focusedDay: DateTime.now(),
              headerVisible: false,
            ),
          ),
        ),
      ),
      // actions: [
      //   Expanded(
      //       child: SizedBox(
      //         width: 50,
      //         child: Center(
      //           child: TextButton(
      //             onPressed: ()=>Navigator.of(context).pop(),
      //             child: Text("キャンセル"),
      //           ),
      //         ),
      //       )
      //   ),
      //   Expanded(
      //     child: SizedBox(
      //       width: 50,
      //       child: Center(
      //         child: TextButton(
      //           onPressed: ()=>Navigator.of(context).pop(),
      //           child: Text("Ok"),
      //         ),
      //       ),
      //     )
      //   ),
      // ],
    );
  }
}
