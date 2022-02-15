import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './ElementListControl.dart';

class ResultBar extends StatelessWidget {
  ResultBar({Key? key}) : super(key: key);

  final _control = Get.find<ElementListControl>();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Obx(
            () => Row(
              children: [
                _control.selectedidx.value == -1
                    ? Expanded(
                        child: Text('Press refresh button to see the result.'))
                    : Expanded(child: Text('${_control.selected.value}')),
                IconButton(
                  icon: Icon(Icons.replay),
                  onPressed: _control.pick,
                )
              ],
            ),
          )),
    );
  }
}
