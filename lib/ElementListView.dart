import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ElementListControl.dart';

class ElementListView extends StatelessWidget {
  ElementListView({Key? key}) : super(key: key);
  final _control = Get.find<ElementListControl>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => _control.elementlist.isEmpty
        ? Text('There\'re NO elements to pick...')
        : ListView.builder(
            itemCount: _control.elementlist.length,
            itemBuilder: (ctx, idx) => Obx(() => Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    color: idx == _control.selectedidx.value
                        ? Colors.lightGreen
                        : Colors.white10,
                    child: Row(
                      children: [
                        Expanded(child: Text(_control.elementlist[idx])),
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () => _control.remove(idx),
                        )
                      ],
                    ),
                  ),
                ))));
  }
}
