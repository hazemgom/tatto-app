
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:tattoapp/features/PhotoScreen.dart';


import '../../../login-feature/login_screen.dart';
import '../../cubit/register_cubit.dart';
import '../../cubit/register_states.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  var globalFormKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var imageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: globalFormKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text('Create Account',
                    style: GoogleFonts.eduNswActFoundation(
                      fontSize: 40,
                      color: Colors.black87,
                    ),
                  ),

                  const  SizedBox(
                    height: 10,
                  ),


                  TextFormField(
                    cursorColor: Colors.black,
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                      }
                      return null;
                    },
                    keyboardAppearance: Brightness.dark,
                    decoration: InputDecoration(
                        labelText: 'name',
                        labelStyle: GoogleFonts.eduNswActFoundation(
                            fontSize: 20, color: Colors.black),
                        prefixIcon: const Icon(
                          Icons.person,
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
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    validator: (String? value) {
                      if (value!.isEmpty) {

                      }
                      return null;
                    },
                    keyboardAppearance: Brightness.dark,
                    decoration: InputDecoration(
                        labelText:  'Phone',
                        labelStyle: GoogleFonts.eduNswActFoundation(
                            fontSize: 20, color: Colors.black),
                        prefixIcon: const Icon(
                          Icons.call,
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
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                      }
                      return null;
                    },
                    keyboardAppearance: Brightness.dark,
                    decoration: InputDecoration(
                        labelText:  'email',
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
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: Colors.black,
                    controller: passwordController,
                    keyboardType: TextInputType.emailAddress,

                    validator: (String? value) {
                      if (value!.isEmpty) {

                      }
                      return null;
                    },
                    keyboardAppearance: Brightness.dark,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: GoogleFonts.eduNswActFoundation(
                            fontSize: 20, color: Colors.black),

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
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    height: 50,
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return TattooApp();
                      }));
                    },
                    child: Text(
                    'Sign',
                      style: GoogleFonts.eduNswActFoundation(
                        fontSize: 25,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                 SizedBox(
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
                  OutlinedButton(

                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginScreen();
                      }));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,

                      child: Text(
                        textAlign: TextAlign.center,
                       'Login',
                        style: GoogleFonts.eduNswActFoundation(
                          fontSize: 25,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
