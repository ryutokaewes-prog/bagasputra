import 'package:flutter/material.dart';

class Bannerall extends StatefulWidget {
  final String image;

  const Bannerall({
    super.key,
    required this.image
  });

  @override
  State<Bannerall> createState() => _BannerallState();
}

class _BannerallState extends State<Bannerall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.image),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}




















