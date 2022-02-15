import 'dart:math';

import 'package:get/get.dart';

class ElementListControl extends GetxController {
  var elementlist = <String>[].obs;
  RxInt selectedidx = RxInt(-1);
  RxString selected = "".obs;

  void add(String arg) {
    elementlist.add(arg);
  }

  void remove(int idx) {
    elementlist.removeAt(idx);
    if (selectedidx.value == idx) selectedidx.value = -1;
  }

  void pick() {
    int size = elementlist.length;
    if (size == 0) {
      selectedidx.value = -1;
    } else {
      selectedidx.value = Random().nextInt(size);
      selected.value = elementlist[selectedidx.value];
    }
  }
}
