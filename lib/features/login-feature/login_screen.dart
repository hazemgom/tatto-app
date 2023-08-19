import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:tattoapp/features/PhotoScreen.dart';


import '../Rigster-feature/views/screens/rigster-screen.dart';
import 'cubit/login_cubit.dart';
import 'cubit/login_states.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(

                    children: [
                      Text(
                        'Welcome Back',
                        style: GoogleFonts.eduNswActFoundation(
                          fontSize: 40,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      TextFormField(
                        cursorColor: Colors.black,
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'please enter email';
                          }
                          return null;
                        },
                        keyboardAppearance: Brightness.dark,
                        decoration: InputDecoration(
                            labelText:'Email',
                            labelStyle: GoogleFonts.eduNswActFoundation(
                                fontSize: 20, color: Colors.black),
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: .9, color: Colors.black),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.brown),
                              borderRadius: BorderRadius.circular(15),
                            )),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        cursorColor: Colors.black,
                        controller: passwordController,
                        keyboardType: TextInputType.emailAddress,

                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'please enter password';
                          }
                          return null;
                        },
                        keyboardAppearance: Brightness.dark,
                        decoration: InputDecoration(
                            labelText:'Password',
                            labelStyle: GoogleFonts.eduNswActFoundation(
                                fontSize: 20, color: Colors.black),
                            suffixIcon: IconButton(
                              onPressed: () {

                              },
                              icon: Icon(

                            Icons.password
                              ),
                            ),
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              color: Colors.black,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: .9, color: Colors.black),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.brown),
                              borderRadius: BorderRadius.circular(15),
                            )),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      MaterialButton(
                        clipBehavior: Clip.none,
                        minWidth: double.infinity,
                        color: Colors.lightBlue.shade100,
                        height: 50,
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        onPressed: () {

                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return TattooApp();
                          }));
                        },
                        child: Text(
                         'Login',
                          style: GoogleFonts.eduNswActFoundation(
                            fontSize: 25,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(children: <Widget>[
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 15.0),
                              child: const Divider(
                                color: Colors.black,
                                height: 50,
                              )),
                        ),
                        Text('Or'),
                        Expanded(
                          child: Container(
                              margin: const EdgeInsets.only(
                                  left: 15.0, right: 10.0),
                              child: const Divider(
                                color: Colors.black,
                                height: 50,
                              )),
                        ),
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                         '',
                            style: GoogleFonts.eduNswActFoundation(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            width: 100,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterScreen(),
                                  ),
                                      (route) => false,
                                );
                              },
                              icon: Text(
                               'Rigster',
                                style: GoogleFonts.eduNswActFoundation(
                                  fontSize: 25,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
