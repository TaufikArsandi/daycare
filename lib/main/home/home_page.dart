import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              color: Color(0xFFB788E2),
              margin: EdgeInsets.all(20),
              height: 140,
              width: double.infinity,
            );
          },
        ),
      ),
    );
  }
}
