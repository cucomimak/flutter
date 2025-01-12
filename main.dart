import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'book.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Naviagor Ex',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('HomePage'),
      ),
      body: const Center(
        child: Text('아래 버튼을 클릭해서 페이지를 이동하세요...', style: TextStyle(fontSize: 20,),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondPage()),
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}

class SecondPage extends StatelessWidget{
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text('Second Page'),
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text('이전 페이지로'),
        ),
      ),
    );
  }
}