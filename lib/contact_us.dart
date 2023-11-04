import 'package:appbar/tabs/calls_tab.dart';
import 'package:appbar/tabs/chat_tab.dart';
import 'package:appbar/tabs/status_tab.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> with SingleTickerProviderStateMixin{
  late TabController mTabController;
  String mTitle="Chats";
  @override
  void initState() {
   super.initState();
   mTabController=TabController(length: 4, vsync: this);
   mTabController.addListener(() {
     if(mTabController.index==0){
       mTitle="Community";
     }else if(mTabController.index==1){
       mTitle="Chats";
     }else if(mTabController.index==2){
       mTitle="Status";
     }else{
       mTitle="Calls";
     }
     setState(() {

     });
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mTitle),
        bottom: TabBar(
          isScrollable: true,
          controller: mTabController,
            tabs:[
              Icon(Icons.people_alt),
              Tab(
                child: Row(
                  children: [
                    Icon(Icons.chat_sharp),
                    SizedBox(width: 10,),
                    Text("Chats")
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Icon(Icons.update),
                    SizedBox(width: 10,),
                    Text("Status")
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10,),
                    Text("Calls")
                  ],
                ),
              )
            ]
        ),
      ),
     body:TabBarView(
       controller: mTabController,
       children: [
         Container(color: Colors.pink,),
         ChatsTabPage(),
         StatusTabPage(),
         CallsTabPage()
       ],
     ) ,
    );
  }
}
