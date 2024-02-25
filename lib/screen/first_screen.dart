import 'package:flutter/material.dart';
import 'package:flutter_login_form/conponents/screen.dart';
import 'package:flutter_login_form/screen/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreenShow extends StatefulWidget {
  const FirstScreenShow({super.key});

  @override
  State<FirstScreenShow> createState() => _FirstScreenShowState();
}

class _FirstScreenShowState extends State<FirstScreenShow> {
  int currentIndex = 0;
  late PageController _controlller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controlller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controlller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 247, 243),
      // appBar: AppBar(title: Text("data"),),
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                  child: PageView.builder(
                      controller: _controlller,
                      itemCount: contents.length,
                      onPageChanged: (int index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      itemBuilder: (_, i) {
                        return SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.all(30),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(contents[i].image),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    (contents[i].title),
                                    style: GoogleFonts.poppins(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    (contents[i].description),
                                    style: GoogleFonts.nunito(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800,
                                        color: Color.fromARGB(255, 58, 57, 57)),
                                  ),
                                ],
                              )),
                        );
                      })),
            ),
            Container(
              child: Row(
                children: List.generate(
                    contents.length, (index) => buildpage(index, context)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Container(
                height: 60,
                child: MaterialButton(
                    onPressed: () async {
                      if (currentIndex == contents.length - 1) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const HomeePage()));
                      }
                      _controlller.nextPage(
                          duration: Duration(seconds: 1),
                          curve: Curves.easeInOut);
                    },
                    textColor: Color.fromARGB(255, 19, 11, 160),
                    color: Colors.amber,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                    child: Text(
                      currentIndex == contents.length - 1 ? ">" : "Next",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding buildpage(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,bottom: 50),
      child: Container(
        // padding: EdgeInsets.all(20),
        height: 10,
        // margin:EdgeInsets.only(right: 2),
        width: currentIndex == index ?40 : 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.amber : Colors.green,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}







//
//
//int   _currentPage = 0;
//   PageController _controller = PageController();

//   List<Widget> _paage = [
//     SliderPageScreens(
      
//         title: "Tracking Bus Location easily",
//         description:
//             "Track The Ev-Bus Location in real time, see the bus routes on map that closest to you. and follow the vehivle passing through bus point",
//         image:
//             "https://c8.alamy.com/comp/2EKG4CM/concept-bus-route-on-the-map-3d-rendering-2EKG4CM.jpg"),
//     SliderPageScreens(
//         title: "Search for the bus you want!",
//         description:
//             "Search the bus you want to know the location and find out Buses list on time",
//         image:
//             "https://static.vecteezy.com/system/resources/thumbnails/035/714/897/small/3d-location-folded-paper-map-search-bar-and-pin-png.png"),
//     SliderPageScreens(
//         title: "EV BUS MSU",
//         description:
//             "",
//         image:
//             "https://media.licdn.com/dms/image/D4D12AQEUSAh65k8C2A/article-cover_image-shrink_600_2000/0/1679250439606?e=2147483647&v=beta&t=9MkPKV-UfS2ix-Wh_XFKSxjS9X8Di81oP-jH87klOkM"),
//   ];

//   _onChanged(int index){
//     setState(() {
//       _currentPage=index;
//     });
//   }