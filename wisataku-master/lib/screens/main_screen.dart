import 'package:flutter/material.dart';
import 'package:wisataku/data/candi_data.dart';
import 'package:wisataku/models/candi.dart';
import 'package:wisataku/screens/detail_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisataku'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Candi candi = candiList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(candi: candi);
              }));
            },
            child: Card(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      candi.imageAsset,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(candi.name),
                        const SizedBox(height: 8.0),
                        Text(candi.location),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: candiList.length,
      ),
    );
  }
}
