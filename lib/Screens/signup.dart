import 'package:flutter/material.dart';
import 'package:plantapp/Screens/home_view.dart';
import 'package:plantapp/Screens/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Color primary = Color(0xff0d986a);
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmpassword = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.skip_previous),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(),
                    Align(
                      child: const Text(
                        "Signup!",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0d986a)),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Please login or sign up to continue our app",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: primary),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Username/Email",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade200),
                        ),
                        alignment: Alignment.centerLeft),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                        controller: email,
                        decoration: InputDecoration(
                          hintText: "Username ",
                          prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green.shade100),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade100),
                        ),
                        alignment: Alignment.centerLeft),
                    TextField(
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password ",
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green.shade100),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Confirm Password",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.green.shade100),
                        ),
                        alignment: Alignment.centerLeft),
                    TextField(
                        controller: confirmpassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Confirm Password ",
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green.shade100),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        HomeView()),
                              );
                            },
                            child: Text(
                              "SignUp",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(
                                    side: BorderSide(
                                        style: BorderStyle.solid,
                                        color: Color(0xff0d986a))),
                                backgroundColor: primary))),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Login()));
                        },
                        child: const Text(
                          "Already have an account? Login",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )),
                  ],
                ),
              ),
            )));
  }
}
