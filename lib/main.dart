import 'package:flutter/material.dart';

void main() => runApp(const MiDrawerMeza());

class MiDrawerMeza extends StatelessWidget {
  const MiDrawerMeza({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Drawer Meza"),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_sharp,
              ),
              onPressed: () {},
            )
          ],
        ),
        backgroundColor: const Color(0xffdbdbdb),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Refaccionaria"),
                accountEmail: Text("a.21308051280504@cbtis128.edu.mx"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://raw.githubusercontent.com/JorgeMeza123/practica1_6j_IOS/main/draw1.jpg"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://raw.githubusercontent.com/JorgeMeza123/practica1_6j_IOS/main/draw5.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/JorgeMeza123/practica1_6j_IOS/main/draw2.jpg"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/JorgeMeza123/practica1_6j_IOS/main/draw3.jpg"),
                  ),
                ],
              ),
              const ListTile(
                leading:
                    Icon(Icons.account_box_sharp, color: Colors.orangeAccent),
                title: Text("Usuario",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading:
                    Icon(Icons.account_box_rounded, color: Color(0xffffd340)),
                title: Text("Empleado",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading:
                    Icon(Icons.list_alt_outlined, color: Color(0xffd0a925)),
                title: Text("Clientes",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.list_alt_rounded, color: Color(0xff977301)),
                title: Text("inventario",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const ListTile(
                leading: Icon(Icons.abc_outlined, color: Color(0xff977301)),
                title: Text("ventas",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
