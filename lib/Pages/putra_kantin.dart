import 'package:flutter/material.dart';

class PutraKantin extends StatelessWidget {
  const PutraKantin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kantin Details', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/kantin.jpg',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 200,
                  color: Colors.grey[300],
                  child: Center(child: Text('Image Not Found')),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Kantin Sekolah',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Description',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8),
            Text(
              'Kantin seblak biasanya sederhana, bisa berupa warung kecil, gerobak kaki lima, atau stand di area sekolah/kampus. Suasananya ramai, apalagi saat jam istirahat atau sore hari. Aroma khas bumbu kencur dan cabai langsung terasa begitu mendekat.',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
