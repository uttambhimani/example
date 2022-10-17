import 'package:example/home_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  var homecantroller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder(
                init:HomeController(),
                builder: (controller){
                  return Text("${homecantroller.i}");
                },
              ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  homecantroller.chang();
                }, child: Text("1")),
                TextButton(onPressed: (){
                  homecantroller.changg();
                }, child: Text("2")),
                TextButton(onPressed: (){
                  homecantroller.changgg();
                }, child: Text("4")),
                TextButton(onPressed: (){
                  homecantroller.changggg();
                }, child: Text("8")),

              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}
