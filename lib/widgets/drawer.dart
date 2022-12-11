// ignore_for_file: prefer_const_constructors, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    final imageUrl = ("https://www.google.com/search?q=login%20avatar%20png&tbm=isch&rlz=1C1CHBF_enIN970IN970&hl=en-US&sa=X&ved=0CB0QtI8BKABqFwoTCLCSr5jfgvYCFQAAAAAdAAAAABAN&biw=483&bih=541#imgrc=OmyLfgFTjuk_qM");
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child:UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Manas ranjan"),
                accountEmail: Text("rmanas381@gmail.com"),
                currentAccountPicture:CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ) ,
              ),
              ),
              ListTile(
                 leading: Icon(
                   CupertinoIcons.profile_circled,
                   color: Colors.white,
                 ),
                 title: Text(
                   "Profile",
                   textScaleFactor: 1.2,
                   style: TextStyle(
                     color: Colors.white,
                   ),
                 )
               ),
               ListTile(
                 leading: Icon(
                   CupertinoIcons.home,
                   color: Colors.white,
                 ),
                 title: Text(
                   "Home",
                   textScaleFactor: 1.2,
                   style: TextStyle(
                     color: Colors.white,
                   ),
                 )
               ),
               ListTile(
                 leading: Icon(
                   CupertinoIcons.phone,
                   color: Colors.white,
                 ),
                 title: Text(
                   "Phone",
                   textScaleFactor: 1.2,
                   style: TextStyle(
                     color: Colors.white,
                   ),
                 )
               ),
               ListTile(
                 leading: Icon(
                   CupertinoIcons.cart,
                   color: Colors.white,
                 ),
                 title: Text(
                   "View Cart",
                   textScaleFactor: 1.2,
                   style: TextStyle(
                     color: Colors.white,
                   ),
                 )
               ),
               ListTile(
                 leading: Icon(
                   CupertinoIcons.settings,
                   color: Colors.white,
                 ),
                 title: Text(
                   "Settings",
                   textScaleFactor: 1.2,
                   style: TextStyle(
                     color: Colors.white,
                   ),
                 )
               ),
               ListTile(
                 leading: Icon(
                   CupertinoIcons.mail,
                   color: Colors.white,
                 ),
                 title: Text(
                   "Chat",
                   textScaleFactor: 1.2,
                   style: TextStyle(
                     color: Colors.white,
                   ),
                 )
               )
          ],
        ),
      ),
      
    );
  }
}