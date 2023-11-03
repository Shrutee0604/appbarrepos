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
           flexibleSpace: Container(
             color: Colors.blue,
           ),
           expandedHeight: 200,
         ),
         SliverList(delegate: SliverChildBuilderDelegate(
                 (context, index) => ListTile(
                   title: Text('${index+1}'),
                 )
         )
         )
       ],
     ),
    );
  }
}
