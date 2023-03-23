import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_demo/app.dart';
import 'package:hoverover/hoverover.dart';

void main() {
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SunSide(),
    );
  }
}

class SunSide extends StatelessWidget {
  const SunSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: App.width(context),
                height: App.height(context),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/${App.getImagePath(context)}/image-header.jpg"),fit: BoxFit.cover)
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("sunnyside",style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),),

                        Spacer(),

                        _menu(context),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  _menu(BuildContext context){
    return Row(
      children: [
        HoverOver(
          builder: (isHover) {
            return Container(
              decoration: BoxDecoration(
                color: isHover?Colors.white.withOpacity(0.5):Colors.transparent,
                borderRadius: BorderRadius.circular(25)
              ),
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Text("About",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
            );
          }
        ),
        HoverOver(
            builder: (isHover) {
              return Container(
                decoration: BoxDecoration(
                    color: isHover?Colors.white.withOpacity(0.5):Colors.transparent,
                    borderRadius: BorderRadius.circular(25)
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                child: Text("Service",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              );
            }
        ),
        HoverOver(
            builder: (isHover) {
              return Container(
                decoration: BoxDecoration(
                    color: isHover?Colors.white.withOpacity(0.5):Colors.transparent,
                    borderRadius: BorderRadius.circular(25)
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                child: Text("Projects",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              );
            }
        ),
        HoverOver(
            builder: (isHover) {
              return Container(
                decoration: BoxDecoration(
                    color: isHover?Colors.white.withOpacity(0.5):Colors.transparent,
                    borderRadius: BorderRadius.circular(25)
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                child: Text("Contacts",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              );
            }
        ),

      ],
    );
  }
}

