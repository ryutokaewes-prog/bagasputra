import 'package:bagasputra/bagas_login/kantin_sekolah.dart';
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
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => KantinSekolah()),
      ),
      child: Card(
        elevation: 2,
        child: Column(
          children: [
            Image(image: AssetImage(widget.file),
              height: 50,
              width: 50,
            ),
            Text(widget.title),
          ],
        ),
      ),
    );
  }
}
