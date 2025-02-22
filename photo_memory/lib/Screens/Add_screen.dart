// ignore_for_file: file_names, library_private_types_in_public_api
import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final TextEditingController _serverNameController = TextEditingController();
  final TextEditingController _serverIPController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Server'), centerTitle: true),
 
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _serverNameController,
              decoration: InputDecoration(
                labelText: 'Server Name',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _serverIPController,
              decoration: InputDecoration(
                labelText: 'Server IP Address',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),
            Opacity(
              opacity: 0.5, // Adjust opacity (0.0 = fully transparent, 1.0 = fully opaque)
              child: ElevatedButton(
              onPressed: () {},
              child: const Text("Add"),
  ),
)

          ],
        ),
      ),
    );
  }
}
