import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_form/pages/user_profile.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        Image.asset(
          'assets/images/buslogo.png',
          width: 100,
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: Text(
            "EV Bus MSU",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 16, 15, 14),
                shadows: [
                  Shadow(
                      color: Color.fromARGB(182, 196, 197, 157),
                      offset: const Offset(2, 2),
                      blurRadius: 25),
                ]),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        // menulistItems(iconlead: EvaIcons.person, titlenext: "Your account"),
        // menulistItems(iconlead: Icons.translate, titlenext: "languages"),
        // menulistItems(iconlead: EvaIcons.settings, titlenext: "Setting"),
        // menulistItems(
        //     iconlead: Icons.settings_backup_restore, titlenext: "version"),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
          child: GestureDetector(
            onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Userpf()),
                    (route) => true);
              },
            child: listsetting(
                iconlead: EvaIcons.person, titlenext: "Your account"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
          child: GestureDetector(
            onTap: () {},
            child:
                listsetting(iconlead: Icons.translate, titlenext: "languages"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
          child: GestureDetector(
            onTap: () {},
            child:
                listsetting(iconlead: EvaIcons.settings, titlenext: "Setting"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
          child: GestureDetector(
            onTap: () {},
            child: listsetting(
                iconlead: Icons.settings_backup_restore, titlenext: "version"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
          child: GestureDetector(
            onTap: () {},
            child: listsetting(
                iconlead: Icons.privacy_tip, titlenext: "Privacy and policy"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
          child: GestureDetector(
            onTap: () {},
            child: listsetting(iconlead: EvaIcons.info, titlenext: "About us"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 5),
          child: GestureDetector(
            onTap: () {},
            child: listsetting(
                iconlead: Icons.contact_support, titlenext: "Support"),
          ),
        ),
      ],
    )));
  }

  Container listsetting({required iconlead, required titlenext}) {
    return Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
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
                child: Icon(iconlead),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                titlenext,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ],
          ),
        ));
  }
}



//  decoration: BoxDecoration(
//           gradient: LinearGradient(
//         begin: Alignment.topRight,
//         end: Alignment.bottomLeft,
//         colors: [Colors.black54,
//           Colors.green,
          
//         ],
//       )),