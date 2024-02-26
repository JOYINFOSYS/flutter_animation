import 'package:flutter/material.dart';
import 'package:flutter_animation/big_image.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Lottie.asset("assets/animation/glass.json",height: 600),
              InkWell(
                onTap: (){
                  Get.to(BigImage());
                },
                child: Hero(
                  tag: "photo",
                  child: SizedBox(
                    height: 200,
                      width: double.infinity,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network("https://previews.123rf.com/images/rglinsky/rglinsky1201/rglinsky120100188/12336990-vertical-oriented-image-of-famous-eiffel-tower-in-paris-france.jpg",fit: BoxFit.cover,))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
