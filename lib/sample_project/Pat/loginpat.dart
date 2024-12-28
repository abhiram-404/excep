import 'package:flutter/material.dart';

import '../FirstPg.dart';
import 'PatHomepg.dart';


class LoginPat extends StatefulWidget {
  const LoginPat({super.key});

  @override
  State<LoginPat> createState() => _LoginPatState();
}

class _LoginPatState extends State<LoginPat> {
  final _formKey = GlobalKey<FormState>(); // For form validation
  bool _isLoading = false; // To show loading indicator
  final RegExp phonergr = RegExp(r"^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[6789]\d{9}$");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade700,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstPg()),
              );
            },
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal.shade700, Colors.teal.shade500, Colors.teal.shade300],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // App Logo or Illustration
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('asset/psy.png'), // Replace with your asset
                ),
                SizedBox(height: 20),

                // Title
                Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Log in to continue',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30),

                // Form Container
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // Mobile Number TextField
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: 'Mobile Number',
                            hintText: 'Enter Mobile number',
                            prefixIcon: Icon(Icons.call, color: Colors.teal),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                          ),
                          style: TextStyle(color: Colors.black),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a mobile number';
                            }else if (!phonergr.hasMatch(value)) {
                              return 'Please enter a valid Indian phone number';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 20),

                      // Next Button
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              setState(() {
                                _isLoading = true;
                              });
                              Future.delayed(Duration(seconds: 2), () {
                                setState(() {
                                  _isLoading = false;
                                });
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PatHomePg()),
                                );
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green, // Solid color for better visibility
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 5, // Shadow effect
                          ),
                          child: _isLoading
                              ? CircularProgressIndicator(color: Colors.white)
                              : Text(
                            'Next',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      // Social Media Login Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Google Sign-In Button
                          ElevatedButton.icon(
                            onPressed: () {
                              print('Google sign-in clicked');
                            },
                            icon: Icon(Icons.g_mobiledata, color: Colors.red),
                            label: Text('Google'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 20,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),

                          // Facebook Sign-In Button
                          ElevatedButton.icon(
                            onPressed: () {
                              print('Facebook sign-in clicked');
                            },
                            icon: Icon(Icons.facebook, color: Colors.blue),
                            label: Text('Facebook'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              padding: EdgeInsets.symmetric(
                                vertical: 12,
                                horizontal: 20,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                // Footer Text
                Text(
                  'Connecting People for Better Health',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
