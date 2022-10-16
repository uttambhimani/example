import 'package:example/home_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {

  var homecontroller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GetBuilder(
              init: HomeController(),
              builder: (controller){
                return Text("${homecontroller.i}");
              },
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                homecontroller.chang();
              }, child: Text("1")),
              SizedBox(width: 20,),

              ElevatedButton(onPressed: (){
                homecontroller.changg();
              }, child: Text("2")),
              SizedBox(width: 20,),

              ElevatedButton(onPressed: (){
                homecontroller.changgg();
              }, child: Text("4")),
              SizedBox(width: 20,),

              ElevatedButton(onPressed: (){
                homecontroller.changggg();
              }, child: Text("8")),

            ],
          )
        ],
      ) ,
        ),
      );
  }
}
