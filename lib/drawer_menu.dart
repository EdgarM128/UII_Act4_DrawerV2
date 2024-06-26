import 'package:flutter/material.dart';

import 'main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(
              icon: Icons.home,
              text: 'Row centrado',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.inicio)}),
          _buildDrawerItem(
              icon: Icons.account_circle,
              text: 'Row izquierda',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile1)}),
          _buildDrawerItem(
              icon: Icons.movie,
              text: 'Row estrecho',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile2)}),
          _buildDrawerItem(
              icon: Icons.format_indent_decrease_sharp,
              text: 'Row derecho',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile3)}),
          _buildDrawerItem(
              icon: Icons.padding_outlined,
              text: 'Row Espaciado uniforme',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile4)}),
          _buildDrawerItem(
              icon: Icons.library_add,
              text: 'Row Espaciado alrededor',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile5)}),
          Divider(),
          _buildDrawerItem(
              icon: Icons.contact_phone,
              text: 'Row Space between',
              onTap: () =>
                  {Navigator.pushReplacementNamed(context, MyApp.profile6)}),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/drawer_header.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Compilación Movil",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
