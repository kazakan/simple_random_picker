import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_picker/ElementListControl.dart';

class AddBar extends StatefulWidget {
  const AddBar({Key? key}) : super(key: key);

  @override
  State<AddBar> createState() => _AddBarState();
}

class _AddBarState extends State<AddBar> {
  final TextEditingController _controller = TextEditingController();
  final _control = Get.find<ElementListControl>();

  void addToList() {
    if (_controller.text.isEmpty) return;
    _control.add(_controller.text);
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(labelText: 'Add element'),
                onSubmitted: (_) => addToList(),
              ),
            ),
            IconButton(icon: Icon(Icons.add), onPressed: addToList)
          ],
        ),
      ),
    );
  }
}
