import 'package:appbar/tabs/calls_tab.dart';
import 'package:appbar/tabs/chat_tab.dart';
import 'package:appbar/tabs/status_tab.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("About Us,whatsapp"),
            bottom: TabBar(
              isScrollable: true,
                tabs: [
                  Tab(
                      icon: Icon(Icons.people_alt),
                      child: Text("Community")
                  ),
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
                      icon:Icon(Icons.update),
                      text: "Status"
                  ),
                  Row(
                      children:[
                        Icon(Icons.phone),
                        SizedBox(width: 10,),
                        Text("Calls")]
                  ),

                ]
            ),
          ),
          body: TabBarView(
            children: [
              Container(color: Colors.pink,),
              ChatsTabPage(),
              StatusTabPage(),
              CallsTabPage()
            ],
          ),
        ));
  }
}
