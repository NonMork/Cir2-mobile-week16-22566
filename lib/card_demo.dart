import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget{
  const CardDemo({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("data"),
      ),
      body: Center(
        child: Card(
          child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              debugPrint("CARD-1");
            },
            child: const SizedBox(
              child: Column(
                 children: [
                Icon(Icons.home),
                Text("CARD-1")
                 ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}