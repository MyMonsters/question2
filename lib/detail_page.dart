import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int id;

  const DetailPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("页面 $id")),
      body: Center(
        child: Text("这是页面 $id", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
