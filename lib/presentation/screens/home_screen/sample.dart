// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:promilo_app/presentation/theme/theme.dart';
// import '../../routes/route_constants.dart';
// import 'home_screen_controller.dart';
//
// // class HomeScreen extends StatelessWidget {
// //   const HomeScreen({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final HomeScreenController screenController = Get.find();
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text("Individual MeetUp"),
// //       ),
// //       body: ListView(),
// //     );
// //   }
// // }
//
//
//
// class HomeScreen extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<HomeScreen> {
//   late List<Widget> _pages;
//
//   final List<BottomNavigationBarItem> _items = [
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.home),
//       label: "Home",
//     ),
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.messenger_rounded),
//       label: "Messages",
//     ),
//     const BottomNavigationBarItem(
//       icon: Icon(Icons.settings),
//       label: "Settings",
//     )
//   ];
//
//   late int _selectedPage;
//
//   @override
//   void initState() {
//     super.initState();
//     _selectedPage = 0;
//
//     _pages = [
//       MyPage(
//         1,
//         "Page 01",
//         MyKeys.getKeys().elementAt(0),
//       ),
//       MyPage(
//         2,
//         "Page 02",
//         MyKeys.getKeys().elementAt(1),
//       ),
//       MyPage(
//         3,
//         "Page 03",
//         MyKeys.getKeys().elementAt(2),
//       ),
//       // This avoid the other pages to be built unnecessarily
//       // const SizedBox(),
//       // const SizedBox(),
//     ];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(onPressed: () => Get.toNamed(RouteList.navigationScreen),),
//       body: IndexedStack(
//         index: _selectedPage,
//         children: _pages,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: _items,
//         currentIndex: _selectedPage,
//         onTap: (index) {
//           setState(() {
//             // now check if the chosen page has already been built
//             // if it hasn't, then it still is a SizedBox
//             // if (_pages[index] is SizedBox) {
//             //   if (index == 1) {
//             //     _pages[index] = MyPage(
//             //       1,
//             //       "Page 02",
//             //       MyKeys.getKeys().elementAt(index),
//             //     );
//             //   } else {
//             //     _pages[index] = MyPage(
//             //       1,
//             //       "Page 03",
//             //       MyKeys.getKeys().elementAt(index),
//             //     );
//             //   }
//             // }
//
//             _selectedPage = index;
//           });
//         },
//       ),
//     );
//   }
// }
//
// class MyPage extends StatelessWidget {
//   const MyPage(this.count, this.text, this.navigatorKey);
//   final count;
//   final text;
//   final navigatorKey;
//   @override
//   Widget build(BuildContext context) {
//     // You'll see that it will only print once
//     print("Building $text with count: $count");
//     return Navigator(
//       key: navigatorKey,
//       onGenerateRoute: (RouteSettings settings) {
//         return MaterialPageRoute(
//           builder: (BuildContext context) {
//             return Scaffold(
//               appBar: AppBar(
//                 title: Text(this.text),
//               ),
//               body: Center(
//                 child: ElevatedButton(
//                   child: Text(this.count.toString()),
//                   onPressed: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                         builder: (ctx) => MyCustomPage(count + 1, text)));
//                   },
//                 ),
//               ),
//             );
//           },
//         );
//       },
//     );
//   }
// }
//
// class MyCustomPage extends StatelessWidget {
//   MyCustomPage(this.count, this.text);
//   final count;
//   final text;
//   @override
//   Widget build(BuildContext parentContext) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(this.text),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Container(
//               child: ListView.builder(
//                 itemCount: 15,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     width: double.infinity,
//                     child: Card(
//                       child: Center(
//                         child: ElevatedButton(
//                           child: Text(this.count.toString() + " pos($index)"),
//                           onPressed: () {
//                             Navigator.of(parentContext).push(MaterialPageRoute(
//                                 builder: (ctx) =>
//                                     MyCustomPage(count + 1, text)));
//                           },
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class MyKeys {
//   static final first = GlobalKey(debugLabel: 'page1');
//   static final second = GlobalKey(debugLabel: 'page2');
//   static final third = GlobalKey(debugLabel: 'page3');
//
//   static List<GlobalKey> getKeys() => [first, second, third];
// }
