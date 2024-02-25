class SliderPageContent {
  final String image;
  final String title;
  final String description;

  SliderPageContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<SliderPageContent> contents = [
  SliderPageContent(
      image: "assets/images/img1.png",
      title: "Tracking Bus Location easily!",
      description:
          "Track The Ev-Bus Location in real time, see the bus routes on map that closest to you. and follow the vehivle passing through bus point"),
  SliderPageContent(
    image: "assets/images/img2.png",
    title: "Search for the bus you want!",
    description:
       "search the Location bus and access the real-time list of available buses.",
  ),
  // SliderPageContent(
  //     image:
  //         "assets/images/img3.png",
  //     title: "EV BUS MSU",
  //     description: ""),
];


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









//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(35),
//       child: Container(
//         // width: MediaQuery.of(context).size.width,
//         // color: Color.fromARGB(255, 240, 255, 198),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black),
//             ),
//             Text(
//               description,
//             ),
//             Image.network(
//               image,
//               width: 150,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// 