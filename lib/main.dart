import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text('리스트입니다!'),
        ),
        body: Center(
          child: _buildList(),
        )
      )
    );
  }
}
Widget _buildList() => ListView(
  children: [
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),
  ],
);

ListTile _tile(String title, String subtitle) => ListTile(
  title: Text(title),
  subtitle: Text(subtitle),
  leading: 
      ClipRRect(
        borderRadius: BorderRadius.circular(100),
  child:Image.network("https://randomuser.me/api/portraits/women/90.jpg")
      )
);










