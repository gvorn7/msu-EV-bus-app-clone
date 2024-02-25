import 'package:flutter/material.dart';
import 'package:flutter_login_form/screen/home_page.dart';

class DepartureList extends StatefulWidget {
  const DepartureList({super.key});

  @override
  State<DepartureList> createState() => _DepartureListState();
}

class _DepartureListState extends State<DepartureList> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.looks_one),
                ),
                Tab(
                  icon: Icon(Icons.looks_two),
                ),
                Tab(
                  icon: Icon(Icons.looks_3),
                ),
              ],
            ),
            leading: IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeePage()),
                      (route) => false);
                },
                style:IconButton.styleFrom(backgroundColor:  const Color.fromARGB(126, 110, 255, 115)) ,
                icon: const Icon(
                  Icons.arrow_back_ios,
                ))
            // ElevatedButton.icon(
            //               onPressed: () {
            //                 Navigator.pushAndRemoveUntil(
            //                     context,
            //                     MaterialPageRoute(
            //                         builder: (context) =>  HomeePage( )),
            //                     (route) => false);
            //               },
            //               style: ElevatedButton.styleFrom(
            //                   backgroundColor:
            //                       Color.fromARGB(126, 110, 255, 115)),
            //               icon: const Icon(
            //                 Icons.arrow_back_ios,
            //                 color: Color.fromARGB(255, 0, 0, 0),
            //                 // size: 18,
            //               ),
            //               label: Text("")),
            // title: const Center(
            //     child: Text(
            //   "MSU Bus Departure",
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // )),
            ),
        body: TabBarView(children: [
          Container(
            color: Colors.amber,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "MSU Bus 001",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 7:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 8:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 9:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 10:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 11:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 12:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 1:00"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 104, 255, 109),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "MSU Bus 001",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 7:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 8:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 9:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 10:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 11:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 12:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 1:00"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 173, 16, 201),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "MSU Bus 001",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 7:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 8:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 9:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 10:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 11:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 12:00"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: listview(
                        iconlead: Icons.near_me, titlenext: "time 1:00"),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Container listview({required iconlead, required titlenext}) {
    return Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(2, 2),
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
