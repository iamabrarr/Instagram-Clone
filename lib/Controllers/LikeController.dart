import 'package:get/get.dart';

class LikeController extends GetxController {
  var liked = 12.obs;
  increment() {
    liked++;
  }

  decrement() {
    liked--;
  }
}
