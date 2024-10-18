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
        title: Text('Lets Part of your idea'),
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
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/innologo.jpg',
          height: 200,
          width: 200,
          ),
          Text('Login/Singup Modern IT Solution',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),),
      SizedBox(height: 10),
          Padding(
            padding:EdgeInsets.all(16),
            child: TextField(
              maxLength: 50,
              onChanged: (String? value){
                print(value);
              },
              controller: TextEditingController(),
              maxLines: 1,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                // fillColor: Colors.blueAccent[100],
                // filled: true,
                counterText: '',
                hintText: 'User Name or Email',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                // color: Colors.black,
                ),
                labelText: 'User Name or Email',
                // labelStyle: TextStyle(color: Colors.red[200]),
                // label: Icon(Icons.person_2_rounded),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide
                  (
                  color: Colors.deepPurple,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(

                  color: Colors.deepPurple,
                )
              )
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding:EdgeInsets.all(16),
            child: TextField(
              obscureText: true,
              maxLength: 50,
              onChanged: (String? value){
                print(value);
              },
              controller: TextEditingController(),
              maxLines: 1,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                // fillColor: Colors.blueAccent[100],
                // filled: true,
                  counterText: '',
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w300,
                    // color: Colors.black,
                  ),
                  labelText: 'Password',
                  // labelStyle: TextStyle(color: Colors.red[200]),
                  // label: Icon(Icons.person_2_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide
                      (
                      color: Colors.deepPurple,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(

                        color: Colors.deepPurple,
                      )
                  )
              ),
            ),
          ),
        ElevatedButton(
            onPressed: (){},
            child: 
            Text('Login'),
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
            color: Colors.black,
              // color: Colors.white,
              fontSize: 15,),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            )
          ),
        ),
          ElevatedButton(onPressed: (){},
              child:
            Text('Signup'),
            style: ElevatedButton.styleFrom(
              textStyle: TextStyle(
                fontSize: 20,

              )
            ),
          ),
        ],
      ),
    ),
    );
  }
}