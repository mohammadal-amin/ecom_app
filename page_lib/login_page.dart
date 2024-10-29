import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'start_page.dart';

void main() {
  runApp(CustoApp());
}

class CustoApp extends StatelessWidget {
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
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lets Part of your idea'),
          titleTextStyle: TextStyle(color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15)),
          ),
          backgroundColor: Colors.black,
        ),

        // body:
        // Center(
        //   child:
        //   Column(mainAxisAlignment: MainAxisAlignment.start,
        //     children: [
        //       Image.asset('assets/innologo.jpg',
        //       height: 200,
        //       width: 200,
        //       ),
        //       Text('Login/Singup Modern IT Solution',
        //       style: TextStyle(
        //         fontSize: 30,
        //         color: Colors.black,
        //       ),),
        //
        //   SizedBox(height: 10),
        //
        //       Padding(
        //         padding:EdgeInsets.all(16),
        //         child:
        //         TextField(
        //           maxLength: 50,
        //           onChanged: (String? value){
        //             print(value);
        //           },
        //           controller: TextEditingController(),
        //           maxLines: 1,
        //           keyboardType: TextInputType.emailAddress,
        //           decoration: InputDecoration(
        //             // fillColor: Colors.blueAccent[100],
        //             // filled: true,
        //             counterText: '',
        //             hintText: 'User Name or Email',
        //             hintStyle: TextStyle(
        //               fontWeight: FontWeight.w300,
        //             // color: Colors.black,
        //             ),
        //             labelText: 'User Name or Email',
        //             // labelStyle: TextStyle(color: Colors.red[200]),
        //             // label: Icon(Icons.person_2_rounded),
        //           border: OutlineInputBorder(
        //             borderRadius: BorderRadius.circular(15),
        //             borderSide: BorderSide
        //               (
        //               color: Colors.deepPurple,
        //             ),
        //           ),
        //           focusedBorder: OutlineInputBorder(
        //               borderRadius: BorderRadius.circular(10),
        //             borderSide: BorderSide(
        //
        //               color: Colors.deepPurple,
        //             )
        //           )
        //           ),
        //         ),
        //       ),
        //       SizedBox(height: 15),
        //       Padding(
        //         padding:EdgeInsets.all(16),
        //         child: TextField(
        //           obscureText: true,
        //           maxLength: 50,
        //           onChanged: (String? value){
        //             print(value);
        //           },
        //           controller: TextEditingController(),
        //           maxLines: 1,
        //           keyboardType: TextInputType.emailAddress,
        //           decoration: InputDecoration(
        //             // fillColor: Colors.blueAccent[100],
        //             // filled: true,
        //               counterText: '',
        //               hintText: 'Password',
        //               hintStyle: TextStyle(
        //                 fontWeight: FontWeight.w300,
        //                 // color: Colors.black,
        //               ),
        //               labelText: 'Password',
        //               // labelStyle: TextStyle(color: Colors.red[200]),
        //               // label: Icon(Icons.person_2_rounded),
        //               border: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(15),
        //                 borderSide: BorderSide
        //                   (
        //                   color: Colors.deepPurple,
        //                 ),
        //               ),
        //               focusedBorder: OutlineInputBorder(
        //                   borderRadius: BorderRadius.circular(8),
        //                   borderSide: BorderSide(
        //
        //                     color: Colors.deepPurple,
        //                   )
        //               )
        //           ),
        //         ),
        //       ),
        //
        //     ElevatedButton(
        //         onPressed: (){},
        //         child:
        //         Text('Login'),
        //       style: ElevatedButton.styleFrom(
        //         textStyle: TextStyle(
        //         color: Colors.black,
        //           // color: Colors.white,
        //           fontSize: 15,),
        //         backgroundColor: Colors.white,
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(25),
        //         )
        //       ),
        //     ),
        //       SizedBox(
        //         height: 15,
        //       ),
        //       ElevatedButton(onPressed: (){},
        //           child:
        //         Text('Sign up'),
        //         style: ElevatedButton.styleFrom(
        //          const  textStyle: TextStyle(
        //             fontSize: 15,
        //
        //           )
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Your Email or Phone No';
                  }
                  return null;
                },
                controller: _emailTextController,
                decoration: InputDecoration(
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
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                        ))),
              ),
              SizedBox(height: 15),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Your Password';
                  }
                  return null;
                },
                controller: _passwordController,
                decoration: InputDecoration(
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
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                        ))),
              ),
              ElevatedButton(
                onPressed: () {
                  // String email=_emailTextController.text;
                  // String password=_passwordController.text;
                  // if (email.isNotEmpty && password.isNotEmpty){
                  //   print('Log In Successful');
                  // }
                  // else{
                  //   print('Data Not valid');
                  // }
                  if (_formKey.currentState!.validate()) {
                    print('Log in Successful');
                  }
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      color: Colors.black,
                      // color: Colors.white,
                      fontSize: 15,
                    ),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Sign up'),
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                  fontSize: 15,
                )),
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
          height: 90,
          backgroundColor: Colors.black,
          selectedIndex: 1,
          destinations: [
            NavigationDestination(icon: Icon(Icons.web), label: "website"),
            NavigationDestination(icon: Icon(Icons.percent), label: "Offers"),
            NavigationDestination(icon: Icon(Icons.call), label: "helpline"),
          ],
        ));
  }
}
