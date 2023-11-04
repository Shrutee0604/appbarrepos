import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: false,
            title: Text("settings"),
            leading: Icon(Icons.account_circle),
            actions: [
              Icon(Icons.photo_camera),
              //this will take only icon and we have to do it clickable by using InkWell
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
            ],
            // bottom: PreferredSize(
            //   preferredSize: Size(100, 200),
            //   child: Text("bottom"),
            // ),
            flexibleSpace: Container(
              color: Colors.blue,
            ),
            expandedHeight: 200,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) => ListTile(
                    title: Text('${index + 1}'),
                  )))
        ],
      ),
    );
  }
}
