import 'package:appbar/about_us.dart';
import 'package:appbar/contact_us.dart';
import 'package:appbar/profile.dart';
import 'package:appbar/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> popMenuItemsList = [
    {"icon": Icons.settings, "title": "Settings"},
    {"icon": Icons.info_outline, "title": "About Us"},
    {"icon": Icons.phone, "title": "Contact Us"},
    {"icon": Icons.person_2_sharp, "title": "Profile"},
    {"icon":Icons.photo,"title":"Gallery"},
    {"icon": Icons.logout, "title": "Logout"},
  ];
String mInitialValue="";
// String mInitialValue="Settings";
@override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        shadowColor: Colors.indigo,
        elevation: 5,
        leading: Icon(Icons.account_box),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.vertical(bottom: Radius.elliptical(10, 20)),
          /* side: BorderSide(
            color: Colors.black.withOpacity(0.5),
            width: 5,
           // strokeAlign: BorderSide.strokeAlignInside,
     // strokeAlign: BorderSide.strokeAlignOutside,
        strokeAlign: BorderSide.strokeAlignCenter//half is outside half is inside
        )*/
        ),
        //this will give icon and text in row but for that we have an option i.e LEADING
/*
        title: Row(
          children: [
            Icon(Icons.account_circle),
            Text("Home"),
          ],
        ),
*/
        flexibleSpace: Container(
          height: 200,
          color: Colors.blue,
        ),
        //this container is including our appbar
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.indigo,
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size(200, 200),
          child: FlutterLogo(),
        ),
        actions: [
          Icon(Icons.photo_camera),
          //this will take only icon and we have to do it clickable by using InkWell
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
          //this will create clickable button directly
          PopupMenuButton(
            initialValue: mInitialValue,
            color: Colors.pink,
            onSelected: (value){
              mInitialValue=value.toString();
              setState(() {

              });
            },
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 10,
            tooltip: "Settings",
            itemBuilder: (_) {
              return popMenuItemsList.map((eachData) => PopupMenuItem(
                value: eachData["title"],
                onTap: (){
                  if(eachData["title"]=="Settings"){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
                  }else if(eachData["title"]=="About Us"){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUs()));
                  }else if(eachData["title"]=="Contact Us"){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUs()));
                  }else if(eachData["title"]=="Profile"){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                  }else if(eachData["title"]=="Gallery"){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Scaffold(
                      appBar: AppBar(
                        title: Text("Gallery"),
                      ),
                    )));
                  }
                },
                          child: Row(
                        children: [
                          Icon(eachData["icon"]),
                          SizedBox(
                            width: 10,
                          ),
                          Text(eachData["title"])
                        ],
                      )))
                  .toList();
            },
            /*   itemBuilder: (_){
               return [
                 PopupMenuItem(child: Row(
                   children: [
                     Icon(Icons.settings),
                     SizedBox(width: 10,),
                     Text("Settings")
                   ],
                 )),
                 PopupMenuItem(child: Row(
                   children: [
                     Icon(Icons.info_outline),
                     SizedBox(width: 10,),
                     Text("About Us")
                   ],
                 )),
                PopupMenuItem(child: Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10,),
                    Text("Contact Us")
                  ],
                )),
                 PopupMenuItem(child: Row(
                   children: [
                     Icon(Icons.logout),
                     SizedBox(width: 10,),
                     Text("Logout")
                   ],

                 )),
                 PopupMenuItem(child: PopupMenuButton(
                 itemBuilder: (_){
                   return [
                     PopupMenuItem(child: Row(
                       children: [
                         Icon(Icons.settings),
                         SizedBox(width: 10,),
                         Text("Settings")
                       ],
                     )),
                     PopupMenuItem(child: Row(
                       children: [
                         Icon(Icons.info_outline),
                         SizedBox(width: 10,),
                         Text("About Us")
                       ],
                     )),
                     PopupMenuItem(child: Row(
                       children: [
                         Icon(Icons.phone),
                         SizedBox(width: 10,),
                         Text("Contact Us")
                       ],
                     )),
                     PopupMenuItem(child: Row(
                       children: [
                         Icon(Icons.logout),
                         SizedBox(width: 10,),
                         Text("Logout")
                       ],
                     )),
                   ];
                 },
                 )*/
          )
        ],
      ),
    );
  }
}

/*

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  List<Map<String,dynamic>> listPopupMenuItems=[
    {
    "icon":Icons.settings,
    "title":"Settings"
    },
    {
      "icon":Icons.info_outline,
      "title":"About Us"
    },
    {
      "icon":Icons.phone,
      "title":"Contact Us"
    },
    {
      "icon":Icons.account_circle,
      "title":"My Profile"
    },
    {
      "icon":Icons.logout,
      "title":"Logout"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home"),
        leading: Icon(Icons.night_shelter_outlined),
        foregroundColor: Colors.white,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.vertical(bottom: Radius.circular(22)),
        */
/* side: BorderSide(
           color: Colors.black.withOpacity(0.5),
           width: 15,
           strokeAlign: BorderSide.strokeAlignCenter,
         ),*/ /*

       ),
       shadowColor: Colors.grey,
       elevation: 21,
        */
/*
       flexibleSpace: Container(
         height: 200,
         color: Colors.yellow,
       ),*/ /*

       bottom: PreferredSize(
         child: FlutterLogo(),
         preferredSize: Size(double.infinity, 50),
       ),
       actions: [
         IconButton(onPressed: (){},icon: Icon(Icons.camera_alt_outlined),),
         //SizedBox(width: 10,),
         IconButton(onPressed:(){},icon: Icon(Icons.favorite_border_sharp)),
        // SizedBox(width: 10,),
  //       IconButton(icon: Icon(Icons.),onPressed: (){},),
         PopupMenuButton(
             color: Colors.grey,
             elevation: 100,
             shadowColor: Colors.yellow,
             tooltip: "Settings",
             shape:RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(10.0),
              // side: BorderSide(width: 5)
             ) ,

             
             itemBuilder: (_){
               return listPopupMenuItems.map((eachData) =>  PopupMenuItem(
                  onTap: (){
                    if(eachData["title"]=="Settings"){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Scaffold(
                        appBar: AppBar(
                          title: Text("Settings"),
                        ),
                        body: Text("This is settings by direct scaffold"),
                      )));
                    }else if(eachData["title"]=="About Us"){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUs()));
                    }else if(eachData["title"]=="Contact Us"){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUs()));
                    }else if(eachData["title"]=="My Profile"){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                    }
                  },
                   child: Row(
                     children: [
                       Icon(eachData["icon"]),
                       SizedBox(width: 10,),
                       Text(eachData["title"]),
                     ],
                   )
               )).toList();
               //this will return list of popupitems
           */
/*return [
           PopupMenuItem(
               child: Row(
                 children: [
                   Icon(Icons.settings),
                   SizedBox(width: 10,),
                   Text("Settings"),
                 ],
               )
           ),
             PopupMenuItem(
                 child: Row(
                   children: [
                     Icon(Icons.info_outline),
                     SizedBox(width: 10,),
                     Text("About US"),
                   ],
                 )
             ),
             PopupMenuItem(
                 child: Row(
                   children: [
                     Icon(Icons.settings),
                     SizedBox(width: 10,),
                     Text("Contact Us"),
                   ],
                 )
             ),
           PopupMenuItem(
               child: Row(
                 children: [
                   Icon(Icons.phone),
                   SizedBox(width: 10,),
                   Text("Logout")
                 ],
               )
           )
           ];*/ /*

         })
       ],
       // centerTitle: true,
      ),
    );
  }
}
*/
