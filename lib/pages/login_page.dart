// ignore_for_file: prefer_const_declarations, deprecated_member_use, prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors, unused_element

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  build (BuildContext context) async {
  String name = "";
  bool changebutton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context)  async{
    if (_formKey.currentState!.validate()) {
    {setState(() {
                changebutton= true;
              });
              await Future.delayed(Duration(seconds: 0));
              await Navigator.pushNamed(context, MyRoutes.homeRoute);
              setState(() {
                changebutton= false;
              });
  } 
  }


  @override
  Widget build(BuildContext context) {
   final imageUrl = (
           "https://www.google.com/search?q=login%20avatar%20png&tbm=isch&rlz=1C1CHBF_enIN970IN970&hl=en-US&sa=X&ved=0CB0QtI8BKABqFwoTCLCSr5jfgvYCFQAAAAAdAAAAABAN&biw=483&bih=541#imgrc=OmyLfgFTjuk_qM");
    return Material(
        color: context.canvasColor,
        child:SingleChildScrollView(
        child:Form(
          key: _formKey,
          child: Column(
            children: [Image.network(
           "https://www.google.com/search?q=login%20avatar%20png&tbm=isch&rlz=1C1CHBF_enIN970IN970&hl=en-US&sa=X&ved=0CB0QtI8BKABqFwoTCLCSr5jfgvYCFQAAAAAdAAAAABAN&biw=483&bih=541#imgrc=OmyLfgFTjuk_qM",
            fit: BoxFit.cover,
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height:20.0,
            ),
            Padding(
              padding: 
              const EdgeInsets.symmetric(vertical: 16.0,
              horizontal: 32.0
              ),
            child: Column(
              children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return " Username cannot be empty";
               }
               return null;
              },
              onChanged:(value) {
                name = value;
                setState(() {
            });
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
              ),
              validator: (value) {
                if (value!.isEmpty){
                  return "Password cannot be empty";
                }
                else if (value. length < 8) {
                  return "Password length should be atleast 8";
                }
                return null;
              },
            ),
            
            SizedBox(
              height:20.0,
            ),
            Material(
              color: context.theme.buttonColor,
                    borderRadius:
                    BorderRadius.circular(changebutton ? 50 : 8),
              child: InkWell(
                onTap: () => moveToHome(context),
                child: AnimatedContainer(
                  duration: Duration(seconds:0),
                  width: changebutton ? 50 : 1050,
                  height: 50,
                  alignment: Alignment.center,
                  child:changebutton?Icon(Icons.done,color: Colors.white,): Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  //decoration: BoxDecoration(
                  //  color: Colors.blue,
                  //  borderRadius:
                  //  BorderRadius.circular(changebutton ? 50 : 8)
                    ),
                ),
              ),
              ],
            //ElevatedButton(
            //  child: Text("login"),
            //  style: TextButton.styleFrom(),
            //  onPressed: (){
            //    Navigator.pushNamed(context, MyRoutes.homeRoute);
            //  },
            //  ),
            ),
            
          )
            ]
              ),
        )
      )
      );
    
    }
    }
  }
}