import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              // Heading
              Transform.translate(
                offset: const Offset(0, -20),
                child:
                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color.fromARGB(255, 28, 242, 235),
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
                offset: const Offset(0, -20),
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


              //emailbox
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
              const SizedBox(height: 10),

              //Username
              Transform.translate(
                offset: const Offset(0, -20),
                child:
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'UserName',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),


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
                      hintText: 'UserName',
                      hintStyle: TextStyle(color: Colors.grey[900]),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),




              //phone number
              Transform.translate(
                offset: const Offset(0, -20),
                child:
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),



              //phone number box
              Transform.translate(
                offset: const Offset(0, -20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      fillColor: Colors.grey[100],
                      filled: true,
                      hintText: 'Enter your phone number',
                      hintStyle: TextStyle(color: Colors.grey[900]),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              //Password
              Transform.translate(
                offset: const Offset(0, -20),
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




              // Password box
              Transform.translate(
                offset: const Offset(0, -20),
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
              const SizedBox(height: 10),


              //confirm password

              Transform.translate(
                offset: const Offset(0, -20),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Confirm Password',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),

              // Confirm Password box
              Transform.translate(
                offset: const Offset(0, -20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      fillColor: Colors.grey[100],
                      filled: true,
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Colors.grey[900]),
                    ),
                  ),
                ),
              ),


               //Signup
              Transform.translate(
                offset: const Offset(0, 20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
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
                        'Sign Up',
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

            ],
          ),
        ),
      ),
    );

  }
}

