import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  // ignore: type_annotate_public_apis
  var selectedimagePath = ''.obs;
  // ignore: type_annotate_public_apis
  var selectedimageSize = ''.obs;
  void getImage(ImageSource imageSource) async {
    // ignore: deprecated_member_use
    final pickedFile = await ImagePicker().getImage(source: imageSource);
    if (pickedFile != null) {
      selectedimagePath.value = pickedFile.path;
      selectedimageSize.value =
          (File(selectedimagePath.value).lengthSync() / 1024 / 1024)
                  .toStringAsFixed(2) +
              "Mb";
    } else {
      Get.snackbar("Error", "Image not selected",
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
