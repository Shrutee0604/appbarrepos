import 'package:appbar/about_us.dart';
import 'package:appbar/settings.dart';
import 'package:appbar/tabs/chat_tab.dart';
import 'package:appbar/tabs/status_tab.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<Map<String,dynamic>> drawerItemList=[
    {"icon":Icons.home,"title":"Home"},
    {"icon":Icons.account_circle,"title":"My Profile"},
    {"icon":Icons.settings,"title":"Settings"},
    {"icon":Icons.info_outline,"title":"About Us"},
    {"icon":Icons.logout,"title":"Logout"}
  ];

  List<Widget> listNavPages=[
    ChatsTabPage(),
    StatusTabPage()
  ];

 List<Widget> drawerNavigationItemList=[
 //  MyHomePage(),
    Container(
      color: Colors.brown,
      child: Center(child: Text("Home")),
    ),
    Profile(),
    Settings(),
    AboutUs(),];
  int drawerSelectedIndex=0;
  int mSelectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile. drawer"),
      ),
      body: //listNavPages[mSelectedIndex] ,
      drawerNavigationItemList[drawerSelectedIndex],
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.grey.shade300,
          indicatorColor: Colors.orange.shade300,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: mSelectedIndex,
          onDestinationSelected: (index){
            mSelectedIndex=index;
            setState(() {

            });
          },
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home),
                label: "Home"
            ),
            NavigationDestination(
                icon: Icon(Icons.account_circle),
                label: "Profile"
            )
          ],
        ),
      drawer: Drawer(
        width: 300,
      backgroundColor: Colors.orange.shade200,
        elevation: 21,
        shadowColor: Colors.red,
       child: Column(
         children: [
           Container(
           //  margin: EdgeInsets.all(10),
             height: 250,
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(21),
               color: Colors.orange,
             ),
             child:Align(
               alignment: Alignment.bottomCenter,
               child: SizedBox(
                 height: 50,
                 child: Row(
                   children: [
                     CircleAvatar(),
                     SizedBox(width: 10,),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                       Text("Webster Technologies"),
                       Text("webstertechnology@gmail.com")
                     ],)
                   ],
                 ),
               ),
             ) ,
           ),
           Expanded(
             child: ListView.builder(
               itemCount:drawerItemList.length,
               itemBuilder: (_,index){
               return InkWell(
                 onTap: (){
 if(index==4){
                            //dialog
                          }else{
                           drawerSelectedIndex=index;
                           setState(() {});
                          }
                          Navigator.pop(context);
                 },
                 child: ListTile(
                   leading: Icon(drawerItemList[index]["icon"]),
                   title: Text(drawerItemList[index]["title"]),
                 ),
               );
             },

             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Version 1.2"),
           ),
         ],
       ),
       /* child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("My Profile"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About Us"),
            )
          ],
        ),*/
      ),

    );
  }
}
