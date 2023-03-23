import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App {
  static String getImagePath(BuildContext context){
    if(MediaQuery.of(context).size.width > 600){
      return "desktop";
    }else{
      return "mobile";
    }
  }
  static width(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static height(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
}
