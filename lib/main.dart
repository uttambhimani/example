import 'package:example/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(
    GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home_Screen(),
    )
  );
}