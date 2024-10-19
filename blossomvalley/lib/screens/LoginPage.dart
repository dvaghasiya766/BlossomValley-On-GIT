import 'package:blossomvalley/screens/BottomNavBar.dart';
import 'package:blossomvalley/screens/SignupPage.dart';
import 'package:flutter/material.dart';

// Login page
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      //   backgroundColor: Color(0xFF750817), // #750817
      // ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
          child: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Blossom Valley.png', // Replace with your image path
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Login Here',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF750817), // #750817
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Color(0xFF750817)), // #750817
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF750817)), // #750817
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF750817)), // #750817
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color(0xFF750817)), // #750817
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF750817)), // #750817
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF750817)), // #750817
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Bottomnavbar()));
                    },
                    child: Text('Login Now'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color(0xFF750817), // #750817
                      padding: EdgeInsets.symmetric(vertical: 15),
                      textStyle: TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                  child: Text('Don’t have an account? Sign Up'),
                  style: TextButton.styleFrom(
                    foregroundColor: Color(0xFF750817), // #750817
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
      // backgroundColor: Color(0xFFE8E8E8), // #E8E8E8
      backgroundColor: Color.fromARGB(255, 245, 255, 250),
    );
  }
}
