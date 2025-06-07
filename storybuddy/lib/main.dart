import 'package:flutter/material.dart';
import 'package:storybuddy/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final String correctUser = "Ramprasad";
  final String correctPass = "flutter";
  bool _obscureText = true;

  String message = '';

  void handleLogin() {
    String username = userController.text.trim();
    String password = passController.text;

    setState(() {
      if (username == correctUser && password == correctPass) {
        message = "Login Successful!";
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      } else {
        message = "Invalid Password or username!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ 
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [const Color.fromARGB(255, 171, 17, 209),const Color.fromARGB(255, 24, 47, 198)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),
          ),
          Center(
          child:Card(
          margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 13,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Login Page",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: userController,
                  decoration: const InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: passController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                  labelText: "Password",
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                ),
                ),
                ),

                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: handleLogin,
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 210, 49, 202)),
                  child: const Text("Login",style: TextStyle(color: Color.fromARGB(255, 2, 2, 2))),
                ),
                const SizedBox(height: 10),
                Text(
                  message,
                  style: TextStyle(
                    color: message == "Login Successful!" ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
          )
        ]
      ),
    );
  }
}
