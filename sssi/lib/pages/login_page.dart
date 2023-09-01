import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sssi/utils/routes.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
                height: 350,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // ElevatedButton(
                    //   child: Text(
                    //     "login",
                    //     style: TextStyle(fontSize: 16),
                    //   ),
                    //   style: TextButton.styleFrom(
                    //     minimumSize: Size(100, 50),
                    //   ),

                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // ),
                    Material(
                      child: InkWell( 
                        //to make the container clickable
                     // aage ya pichhe button ko color dene ke liye 
                        onTap: () async { // on tap method ko async kiya hai because kyuki jo await future delay wala function hai usko isi class mei rakhna pdega warna kam nahi karega 

                          setState(() {
                            changeButton = true;
                          });
                        
                          await Future.delayed(Duration(seconds: 1)); // click karne ke baad 1 second wait karna hai 
                          Navigator.pushNamed(context, MyRoutes.homeRoute); // click karne ke baad kisi new page mei jane ke  liye 
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? Icon(
                                  Icons.done,
                                  color: Colors.white,
                                )
                              : Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            // shape: changeButton
                            //     ? BoxShape.circle
                            //     : BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 50 : 8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
