
import 'package:flutter/material.dart';

class StatusTabPage extends StatelessWidget {
  const StatusTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: Text("Status",style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
