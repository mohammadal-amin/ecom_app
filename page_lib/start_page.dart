import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Image.asset('assets/app.jpg'),
//Image.asset('assets/digi.jpg'),
//Image.asset('assets/innologo.jpg'),
//Image.asset('assets/webim.jpg'),


void main(){
  runApp(CustoApp());
}
class CustoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

 return MaterialApp(
   debugShowCheckedModeBanner: false,
 home: Home(),

   
 );
  // MySnackBar(message,context){
  //   return ScaffoldMessenger.of(context).showSnackBar(snackBar(content: Text(message))
  //   );
  // }
  }
}
class Home extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Modern IT Source"),
        titleTextStyle: TextStyle(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)
          ),
        ),
        titleSpacing: 5,
        // titleTextStyle: ,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 30,
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){print("alaminmb808@gmail.com");}, icon: Icon(Icons.email),color: Colors.white),
          IconButton(onPressed: (){print("Location-Mirpur-1,Dhaka-1216");}, icon: Icon(Icons.location_city),color: Colors.white),
          IconButton(onPressed: (){print("Empty");}, icon: Icon(Icons.notifications),color: Colors.white),
        ],
        //array
      ),
    floatingActionButton: FloatingActionButton(
      elevation: 10,
      child: Icon(Icons.message),
      onPressed: (){},
    ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.black,
          height: 70,
            selectedIndex: 0,
            onDestinationSelected: (int selectedIndex) {
              // TODO: have to change state, will see after stateful widget
            },
            destinations:[
          NavigationDestination(icon: Icon(Icons.dashboard),label: "Dashboard"),
              NavigationDestination(icon: Icon(Icons.percent),label: "Offers"),
              NavigationDestination(icon: Icon(Icons.task),label: "Orders Details"),
              NavigationDestination(icon: Icon(Icons.account_box),label: "Accounts"),
        ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          width: 200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          elevation: 500,
          shadowColor: Colors.grey,
        child:ListView(
        children: [
          DrawerHeader(
              child:
              Text("Alamin Hossain")),
          ListTile( leading: Icon(Icons.home),title: Text("Home"),
              // onTap: (){SnackBar("Home",context;,);}
          ),
          ListTile( leading: Icon(Icons.category_outlined),title: Text("Category")),
          ListTile( leading: Icon(Icons.percent_rounded),title: Text("Offers")),
          ListTile( leading: Icon(Icons.developer_board),title: Text("Developers Info")),
          ListTile( leading: Icon(Icons.handshake_sharp),title: Text("Previous Project Info")),
          ListTile( leading: Icon(Icons.phone_iphone_rounded),title: Text("helpline")),
          ListTile( leading: Icon(Icons.settings),title: Text("Setting")),
          ListTile( leading: Icon(Icons.logout),title: Text("Log Out")),




             ],
           ),
        ),
      body:
        Scrollbar(
        child:ListView(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
        scrollDirection: Axis.vertical,
          children: [

            Image.asset(
                alignment: Alignment.bottomLeft,
                height: 200,
                width: 200,
                fit: BoxFit.fill ,
                'assets/webdemo.png'),
            SizedBox(height: 15),
            Text(
                textAlign: TextAlign.start,
                'Website Development'),
            SizedBox(height: 30),

            Image.asset(
                alignment: Alignment.bottomLeft,
                height: 200,
                width: 200,
                fit: BoxFit.fill,
                'assets/app.jpg'),
            SizedBox(height: 15),
            Text(
                textAlign: TextAlign.start,
                'Application Development'),
            SizedBox(height: 30),

            Image.asset(
                alignment: Alignment.bottomLeft,
                height: 200,
                width: 500,
                fit: BoxFit.fill,
                'assets/digitaldemo.png'),
            SizedBox(height: 15),
            Text(
                textAlign: TextAlign.start,
                'Digital Marketing'),
            SizedBox(height: 30),

            Image.asset(
                alignment: Alignment.bottomLeft,
                height: 200,
                width: 250,
                fit: BoxFit.fill,
                'assets/grapdemo.jpg'),
            SizedBox(height: 15),
            Text(
                textAlign: TextAlign.start,
                'Graphics Designing'),




          ],

        ),

    )


     );





  }
}