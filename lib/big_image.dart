import 'package:flutter/material.dart';

class BigImage extends StatefulWidget {
  const BigImage({super.key});

  @override
  State<BigImage> createState() => _BigImageState();
}

class _BigImageState extends State<BigImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Hero(
          tag: "photo",
          child: Image.network("https://previews.123rf.com/images/rglinsky/rglinsky1201/rglinsky120100188/12336990-vertical-oriented-image-of-famous-eiffel-tower-in-paris-france.jpg", height: 2500,fit: BoxFit.cover,)),

      ),
    );
  }
}
