// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildTransparentCard("Card 1", Icons.star, context),
              const SizedBox(height: 10),
              buildTransparentCard("Card 2", Icons.favorite, context),
              const SizedBox(height: 10),
              buildTransparentCard("Card 3", Icons.lightbulb, context),
              const SizedBox(height: 10),
              buildTransparentCard("Card 4", Icons.settings, context),
              const SizedBox(height: 10),
              buildTransparentCard("Card 4", Icons.settings, context),
              const SizedBox(height: 10),
              buildTransparentCard("Card 4", Icons.settings, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTransparentCard(String title, IconData icon, BuildContext context) {
    return InkWell(
      //onTap: () {
        //ScaffoldMessenger.of(context).showSnackBar(
          //SnackBar(content: Text("$title Clicked!")),
        //);
      //},
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white.withOpacity(0.3), // Độ trong suốt
        child: Container(
          height: 100,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white, size: 32),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
