import 'package:flutter/material.dart';

class BusNOtificationList extends StatefulWidget {
  const BusNOtificationList({super.key});

  @override
  State<BusNOtificationList> createState() => _BusNOtificationListState();
}

class _BusNOtificationListState extends State<BusNOtificationList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Notification",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 2, 84, 151)),
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              notificationListContainer(
                  imG: "assets/images/busnotification.png",
                  titleText: "Bus.1   5 mn ago",
                  notiDet: "the bus departed 5 minutes ago"),
              notificationListContainer(
                  imG: "assets/images/busnotification2.png",
                  titleText: "Bus N.3 N.4",
                  notiDet: "Bus.1 and Bus.4 depart in 10 mn"),
              notificationListContainer(
                  imG: "assets/images/busnotification.png",
                  titleText: "Bus.2  Today 12:00",
                  notiDet: "the bus departed 5 minutes ago"),
              notificationListContainer(
                  imG: "assets/images/busnotification1.png",
                  titleText: "Check the departure timetable",
                  notiDet: "go see list of departure now...."),
              notificationListContainer(
                  imG: "assets/images/busnotification.png",
                  titleText: "Bus.5  Today 11:40",
                  notiDet: "the bus departed 20 minutes ago"),
              notificationListContainer(
                  imG: "assets/images/busnotification.png",
                  titleText: "Bus.1   5 mn ago",
                  notiDet: "the bus departed 5 minutes ago"),
              notificationListContainer(
                  imG: "assets/images/busnotification2.png",
                  titleText: "Bus N.3 N.4",
                  notiDet: "Bus.1 and Bus.4 depart in 10 mn"),
              notificationListContainer(
                  imG: "assets/images/busnotification.png",
                  titleText: "Bus.2  Today 12:00",
                  notiDet: "the bus departed 5 minutes ago"),
              notificationListContainer(
                  imG: "assets/images/busnotification1.png",
                  titleText: "Check the departure timetable",
                  notiDet: "go see list of departure now...."),
              notificationListContainer(
                  imG: "assets/images/busnotification.png",
                  titleText: "Bus.5  Today 11:40",
                  notiDet: "the bus departed 20 minutes ago"),
            ],
          ),
        ),
      )),
    );
  }

  Padding notificationListContainer(
      {required imG, required titleText, required notiDet}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        // alignment: Alignment.center,
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Color.fromARGB(171, 93, 227, 98),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(50)),
                  child: Image.asset(imG)),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      titleText,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        notiDet,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 2, 84, 151)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
