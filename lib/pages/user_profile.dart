import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_form/screen/home_page.dart';
import 'package:flutter_login_form/screen/log_in.dart';

class Userpf extends StatefulWidget {
  const Userpf({super.key});

  @override
  State<Userpf> createState() => _UserpfState();
}

class _UserpfState extends State<Userpf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(158, 9, 255, 18),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  HomeePage( )),
                              (route) => false);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Color.fromARGB(126, 110, 255, 115)),
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Color.fromARGB(255, 0, 0, 0),
                          size: 25,
                        ),
                        label: Text("")),
                  ),
                ],
              ),
              const SizedBox(
                height: 0,
              ),
              const Center(
                  child: Text(
                "Profile",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          width: 4,
                          color: const Color.fromARGB(255, 54, 53, 49))),
                  child: SizedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/images/me555.png",
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "CHIVORN KANG",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 162, 0)),
              ),
              const Text(
                "Vorn.3",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: const Color.fromARGB(255, 255, 251, 7)),
                  child: const Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: listsetting(
                      iconFirst: Icons.email,
                      textfollow: "64010912532@msu.ac.th"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: listsetting(
                      iconFirst: Icons.phone, textfollow: "+66975767775"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: listsetting(iconFirst: Icons.man, textfollow: "Man"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: GestureDetector(
                  onTap: () {},
                  child:
                      listsetting(iconFirst: Icons.work, textfollow: "Student"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogInPage()));
                    },
                    child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 255, 29, 13),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        alignment: Alignment.centerLeft,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(EvaIcons.logOut),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "log out",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 18),
                              ),
                            ],
                          ),
                        ))),
              ),
            ],
          ),
        )),
      ),
    );
  }

  Container listsetting({required iconFirst, required textfollow}) {
    return Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          // color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 246, 228, 72).withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(2, 2),
            ),
          ],
        ),
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(iconFirst),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                textfollow,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ],
          ),
        ));
  }
}
