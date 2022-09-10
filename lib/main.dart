import 'dart:math';
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
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),
    _tile("안녕하세요", "반가워요"),

  ],
);

ListTile _tile(String title, String subtitle) => ListTile(
  title: Text(title),
  subtitle: Text(subtitle),
  leading:_userImage(images[Random().nextInt(images.length)])
);
ClipRRect _userImage(String url) => ClipRRect(
    borderRadius: BorderRadius.circular(140),
    child:Image.network(url),
);
final images = [
  'https://randomuser.me/api/portraits/women/40.jpg',
  'https://randomuser.me/api/portraits/women/15.jpg',
  'https://randomuser.me/api/portraits/men/33.jpg',
  'https://randomuser.me/api/portraits/women/17.jpg',
  'https://randomuser.me/api/portraits/men/84.jpg',
  'https://randomuser.me/api/portraits/women/45.jpg',
  'https://randomuser.me/api/portraits/women/10.jpg',
  'https://randomuser.me/api/portraits/women/33.jpg'
];








