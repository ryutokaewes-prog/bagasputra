import 'package:flutter/material.dart';

class LatestWidget extends StatefulWidget {
  final String file;
  final String title;
  final String location;

  const LatestWidget({
    super.key,
    required this.file,
    required this.title,
    required this.location,
  });

  @override
  State<LatestWidget> createState() => _LatestWidgetState();
}

class _LatestWidgetState extends State<LatestWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: SizedBox(),
    );
  }
}
