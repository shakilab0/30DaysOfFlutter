import 'package:flutter/material.dart';
import 'package:m_app1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name="";
  bool changeButton=false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "images/login_page.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Name", labelText: "User Name"),
                    onChanged: (value){
                      name=value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),

            InkWell(
              onTap:() async {
                setState(() {
                  changeButton=true;
                });

                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width:changeButton?50: 130,
                height: 50,
                alignment: Alignment.center,
                child:changeButton?Icon(Icons.done,color: Colors.white,):Text("Login" ,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(changeButton?60:7),
                ),
              ),
            ),


            // ElevatedButton(
            //   onPressed: (){
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            //   child: Text("Login",style: TextStyle(fontSize: 20)),
            //   style: TextButton.styleFrom(minimumSize: Size(130,40),
            //       backgroundColor: Colors.deepPurple,
            //       shadowColor:Colors.blue,
            //
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
