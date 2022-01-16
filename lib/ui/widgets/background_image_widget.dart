import 'package:flutter/material.dart';

class BackgroundImageWidget extends StatelessWidget {
  final ImageProvider backgroundImage;
  final Widget child;
  final BoxFit boxFit;
  final double height;

  const BackgroundImageWidget({
    Key key,
    this.backgroundImage,
    this.child,
    this.boxFit = BoxFit.cover,
    this.height = double.infinity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          width: double.infinity,
          height: double.infinity,
      color: Colors.white,
      ),
      Container(
        width: double.infinity,
        height:height,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: backgroundImage,
          fit: boxFit,
        )),
      ),
      Container(
          width: double.infinity,
          height: double.infinity,
          child: child),
    ]);
  }
}
