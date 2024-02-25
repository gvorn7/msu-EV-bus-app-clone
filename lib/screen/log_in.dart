import 'package:flutter/material.dart';
import 'package:flutter_login_form/screen/first_screen.dart';
import 'package:flutter_login_form/screen/register_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
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
          padding: const EdgeInsets.all(25),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/0/0b/Mahasarakham_University_Emblem.png",
                  height: 150,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "EV BUS MSU",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Color.fromARGB(255, 25, 6, 83)),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Text(
                    "Log in",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color.fromARGB(255, 25, 6, 83)),
                  ),
                ),

                // const Center(
                //   child: Text(
                //     "EV BUS MSU",
                //     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                //   ),
                // ),
                // const Center(
                //   child: Text(
                //     "To be a member of BEEN Café",
                //     style: TextStyle(
                //         fontSize: 14,
                //         fontWeight: FontWeight.w600,
                //         color: Colors.black87),
                //   ),
                // ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: username,
                  decoration: const InputDecoration(
                      hintText: "Email", labelText: "Email"),
                ),
                TextFormField(
                  controller: password,
                  decoration: const InputDecoration(
                      hintText: "Password", labelText: "Password"),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {}, child: Text("Fogot Password?")),
                  ],
                ),

                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FirstScreenShow()),
                          (route) => false);
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        backgroundColor:
                            const Color.fromARGB(255, 41, 204, 84)),
                    child: const Text(
                      "Log in",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account yet?",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterPage()),
                              (route) => false);
                        },
                        child: const Text("Register")),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 41, 204, 84)),
                      color: Color.fromARGB(255, 251, 255, 241),
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
                        SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Continue with Google Account",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
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
