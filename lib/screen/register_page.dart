import 'package:flutter/material.dart';
import 'package:flutter_login_form/screen/log_in.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final username = TextEditingController();
  final password = TextEditingController();
  final formKey = GlobalKey<FormState>();

  ValueNotifier<bool> isPasswordVisible = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(40),
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  Center(
                    child: Text(
                      "Register Now",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color:const  Color.fromARGB(255, 25, 6, 83)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: username,
                    decoration: const InputDecoration(
                        hintText: "Email", labelText: "Email"),
                  ),
                  TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                        hintText: "Full Name", labelText: "Full Name"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Sex",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 52, 51, 51),
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Radio(
                              value: "Male",
                              groupValue: "",
                              onChanged: (value) {},
                              activeColor: Colors.green,fillColor: MaterialStateProperty.all(Colors.green),),
                              const Text("Male"),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                              value: "Female",
                              groupValue: "",
                              onChanged: (value) {},
                              activeColor: Colors.green,fillColor: MaterialStateProperty.all(Colors.green),),
                              const Text("Female"),
                        ],
                      ),
                     
                    ],
                  ),
                  TextFormField(
                    controller: username,
                    decoration: const InputDecoration(
                        hintText: "Password", labelText: "Password"),
                  ),
                  TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                        hintText: "Comfirm Password",
                        labelText: "Comfirm Password"),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an Account?"),
                      TextButton(
                          onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogInPage()),
                          (route) => false);
                    },
                          child:const  Text("Log in")),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>const  LogInPage()),
                            (route) => false);
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(15),
                          backgroundColor:const  Color.fromARGB(255, 56, 206, 96)),
                      child: const Text(
                        "Register",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 41, 204, 84)),
                        color:const  Color.fromARGB(255, 251, 255, 241),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://companieslogo.com/img/orig/GOOG-0ed88f7c.png?t=1633218227",
                            width: 30,
                          ),
                        const   SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "Register with Google Account",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
