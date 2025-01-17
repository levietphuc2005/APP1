import 'package:flutter/material.dart';

void main() => runApp(
 const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // ignore: unused_field
  late AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black87,),
          onPressed: (){},
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding:const EdgeInsets.all(20.0),
              child: const Column(
                children: <Widget>[
                  Text('ABC')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
