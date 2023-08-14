import 'package:flutter/widgets.dart';
import 'package:test_app/component/check_box.dart';
import 'package:test_app/component/dash_line.dart';

Widget someComponent({required String text, bool checkBoxState = false}) {
  return Row(
    children: [
      Expanded(
        child: cell(
            child: CustomPaint(
          painter: DashedLinePainter(text: text),
        )),
      ),
      CheckBox(
        state: checkBoxState,
      ),
    ],
  );
}

Widget cell({Widget? child}) {
  return Container(
    constraints: const BoxConstraints(minWidth: 10),
    height: 40,
    child: child,
  );
}
