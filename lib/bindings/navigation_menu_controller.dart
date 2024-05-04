import 'package:get/get.dart';

class NavigationMenuController extends GetxController {
  final RxInt _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;

  set setSelectedIndex(int newVal) => _selectedIndex.value = newVal;
}
