import 'package:flutter/material.dart';
import 'package:m_app1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("First App"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "My new Project Start today",
            style: TextStyle(
              fontSize: 30,
              color: Colors.deepOrange,
            ),
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
