// ignore_for_file: file_names

import 'dart:ui';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // nếu muốn hiệu ứng kéo dài ra sau AppBar
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildTransparentCard("Ram", Icons.api, context, Colors.black),
              const SizedBox(height: 10),
              buildTransparentCard("Download", Icons.download, context, Colors.black),
              const SizedBox(height: 10),
              buildTransparentCard("Process", Icons.receipt, context, Colors.black),
              const SizedBox(height: 10),
              buildTransparentCard("Done", Icons.timelapse, context, Colors.black),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTransparentCard(String title, IconData icon, BuildContext context,Color iconColor) {
    return StatefulBuilder(
      builder: (context, setState) {
        double opacity = 1.0;

        return InkWell(
          onTap: () {
            setState(() {
              opacity = 0.5;
            });
            Future.delayed(const Duration(milliseconds: 150), () {
              setState(() {
                opacity = 1.0;
              });
            });
          },
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 150),
            opacity: opacity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 100,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors. black.withOpacity(0.4),
                      width: 1.2,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(icon, color: iconColor, size: 32),
                      const SizedBox(width: 10),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
