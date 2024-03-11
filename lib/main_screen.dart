import 'package:attendance/views/history.dart';
import 'package:attendance/views/home.dart';
import 'package:attendance/views/settings.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<StatefulWidget> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int myCurrentIndex = 0;
  List pages = const [HomePage(), HistoryPage(), SettingsPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 15,
              offset: const Offset(8, 10)),
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              currentIndex: myCurrentIndex,
              onTap: (index) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.history), label: "History"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "Settings")
              ]),
        ),
      ),
      body: pages[myCurrentIndex],
    );
  }

  // Widget _navBar() {
  //   return Container(
  //     height: 65,
  //     margin: const EdgeInsets.only(right: 24, left: 24, bottom: 24),
  //     decoration: BoxDecoration(
  //         color: Colors.white,
  //         borderRadius: BorderRadius.circular(20),
  //         boxShadow: [
  //           BoxShadow(
  //               color: Colors.black.withAlpha(20),
  //               blurRadius: 20,
  //               spreadRadius: 10)
  //         ]),
  //     child: Row(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: navIcons.map((icon) {
  //           int index = navIcons.indexOf(icon);
  //           bool isSelected = selectedIndex == index;
  //           return Material(
  //             color: Colors.transparent,
  //             child: GestureDetector(
  //               onTap: () {
  //                 setState(() {
  //                   selectedIndex = index;
  //                 });
  //               },
  //               child: SingleChildScrollView(
  //                 child: Column(children: [
  //                   Container(
  //                     alignment: Alignment.center,
  //                     margin: const EdgeInsets.only(
  //                       top: 15,
  //                       left: 35,
  //                       bottom: 0,
  //                       right: 35,
  //                     ),
  //                     child: Icon(
  //                       icon,
  //                       color: isSelected ? Colors.blue : Colors.grey,
  //                     ),
  //                   ),
  //                   Text(
  //                     navTitle[index],
  //                     style: TextStyle(
  //                         color: isSelected ? Colors.blue : Colors.grey),
  //                   ),
  //                   SizedBox(
  //                     height: 10,
  //                   )
  //                 ]),
  //               ),
  //             ),
  //           );
  //         }).toList()),
  //   );
  // }
}
