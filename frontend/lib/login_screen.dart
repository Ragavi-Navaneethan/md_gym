import 'package:flutter/material.dart';
import 'package:project_one/home_screen.dart';
import 'package:project_one/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
              children: [
                const SizedBox(height: 50),

                // Welcome text
                Transform.translate(
                  offset: const Offset(0, -20),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),




                //Email
                Transform.translate(
                  offset: const Offset(0, -10),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),



                //Email box
                Transform.translate(
                  offset: const Offset(0, -20),
                  child:
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 5.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        fillColor: Colors.grey[100],
                        filled: true,
                        hintText: 'Example.com',
                        hintStyle: TextStyle(color: Colors.grey[900]),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),


                //Password
                Transform.translate(
                  offset: const Offset(0, -30),
                  child:
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),



                // Password box
                Transform.translate(
                  offset: const Offset(0, -30),
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(

                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        fillColor: Colors.grey[100],
                        filled: true,
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey[900]),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 75),


                //Forget password
                Transform.translate(
                  offset: const Offset(0, -90),
                  child:Padding(
                    padding: const EdgeInsets.only(right: 35.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),

                ),



                //Login
                Transform.translate(
                  offset: const Offset(0, -80),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ElevatedButton(
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomePage()),
                        );

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 11, 223, 187),
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 11, 204, 204),
                            width: 1,
                          ),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Log in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),



                //log in with google
                Transform.translate(
                  offset: const Offset(0, -60),
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(

                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        fillColor: Colors.grey[100],
                        filled: true,
                        hintText: 'Log in with Google',
                        hintStyle: TextStyle(color: Colors.grey[900]),
                      ),
                    ),
                  ),
                ),

                //sign up
                Transform.translate(
                  offset: const Offset(0, -50),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: ElevatedButton(
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignUp()),
                        );

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Don't have an account? Sign Up",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      );

  }
}






