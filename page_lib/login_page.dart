import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'start_page.dart';

void main (){
  runApp(CustoApp());
}
class CustoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Let start a new innovation",
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lets Part of your idea'),
        shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)
          ),
        ),
        backgroundColor: Colors.blueAccent.shade400,
      ),
    body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/innologo.jpg',
          height: 400,
          width: 400,
          ),
          Text('Modern IT Source'),
          ElevatedButton(onPressed: (){


              child: Text('Joined Us'),
              ),

        ],
      ),
    ),
    );
  }
}