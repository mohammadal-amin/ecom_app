import 'package:flutter/material.dart';


void main() {
  runApp(clientApp() );
}
class clientApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),

    );
  }
}
// class Home  extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//
//
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Welcome'),
//        titleSpacing: 40,
//        backgroundColor: Colors.transparent,
//        elevation: 10,
//        actions: [
//          IconButton(onPressed: (){print("Punch Approved");},
//              icon: Icon(Icons.notifications)
//          ),
//        ],
//      ),
//      bottomNavigationBar:BottomNavigationBar(
//      currentIndex: 0,
//        items: [
//          BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: "Dashboard",backgroundColor: Colors.green),
//          BottomNavigationBarItem(icon: Icon(Icons.mouse_outlined),label: "Product",),
//          BottomNavigationBarItem(icon: Icon(Icons.percent),label: "Offers"),
//          BottomNavigationBarItem(icon: Icon(Icons.task),label: "Orders Details"),
//          BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Accounts"),
//        ],
//      // onTap: (int index){
//      //   if(index==0) {
//      //   }
//      //
//      //   if(index==1){
//      //
//      //   }
//      //
//      //   if(index==2){
//      //
//      //   }
//      //
//      //   if(index==3){
//      //
//      //   }
//      //
//      //   if(index==4){
//      //
//      //   }
//      //
//      // }
//    ) ,
//      drawer: Drawer(
//        child: ListView(
//          children: [
//            DrawerHeader(child:
//            Text("Hello MD.Almin")),
//            ListTile(title: Text("Dashboard")),
//            ListTile(title: Text("My Task")),
//            ListTile(title: Text("Market Scanning")),
//            ListTile(title: Text("Search")),
//            ListTile(title: Text("Attendence")),
//            ListTile(title: Text("My Assessment")),
//            ListTile(title: Text("Perfomance")),
//            ListTile(title: Text("Merchant Nearby")),
//            ListTile(title: Text("Activity Log")),
//            ListTile(title: Text("Log Out")),
//          ],
//        ) ,
//      ),
//      );
//   }
// }
