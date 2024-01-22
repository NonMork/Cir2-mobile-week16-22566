import 'package:flutter/material.dart';
import 'package:flutter_week15/Columpage.dart';
import 'package:flutter_week15/RowColum.dart';
import 'package:flutter_week15/card_demo.dart';
import 'package:flutter_week15/list_view_menu.dart';
import 'package:flutter_week15/my_card.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text("Home"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(accountName: Text("Elon Musk"), 
              accountEmail: Text("elon@gmail.com"), 
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const HomePage(),
                    ), 
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.apps),
                title: const Text("Row and Colum"),
                onTap: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const Rowpage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.apps),
                title: const Text("Colum widget"),
                onTap: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const Columpage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.apps),
                title: const Text("listViewMenu"),
                onTap: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const ListViewMenu(),
                    ),
                  );
                },
              ),
              ListTile(
              leading: const Icon(Icons.abc_sharp),
              title: const Text('Dart Viwe and Inkwell Widget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardDemo(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.credit_card),
              title: const Text('My Card'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyCard(),
                  ),
                );
              },
            ),
            ],
          ),
        ),
        body: const Center(
          child:Text("My App"),
        ),
    );
  }
}