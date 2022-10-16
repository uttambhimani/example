import 'package:get/get.dart';

class HomeController extends GetxController{

  int i=1;

  void chang(){

    i++;

    update();
  }

  void changg(){

    i=i*2;
    update();
  }

  void changgg(){

    i=i*4;
    update();
  }

  void changggg(){
    i=i*8;
    update();
  }

}