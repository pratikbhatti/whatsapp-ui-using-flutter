// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

import 'package:demo18/Utility/constant.dart';
import 'package:demo18/Utility/popUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  // List<PopupMenuItem> pop_0 = [
  //   PopupMenuItem(child: Text("Setting")),
  // ];
  // List<PopupMenuItem> pop_1 = [
  //   PopupMenuItem(child: Text("S")),
  // ];
  // List<PopupMenuItem> pop_2 = [
  //   PopupMenuItem(child: Text("a")),
  // ];
  // List<PopupMenuItem> pop_3 = [
  //   PopupMenuItem(child: Text("b")),
  // ];

  List<dynamic> pop = [
    [
      PopupMenuItem(
        child: Text(
          "Setting",
          style: TextStyle(color: DesignStyle.white),
        ),
      ),
    ],
    [
      PopupMenuItem(
        child: Text(
          "New group",
          style: TextStyle(color: DesignStyle.white),
        ),
      ),
      PopupMenuItem(
        child: Text(
          "New broadcast",
          style: TextStyle(color: DesignStyle.white),
        ),
      ),
      PopupMenuItem(
        child: Text(
          "Linked devices",
          style: TextStyle(color: DesignStyle.white),
        ),
      ),
      PopupMenuItem(
        child: Text(
          "Starred messages",
          style: TextStyle(color: DesignStyle.white),
        ),
      ),
      PopupMenuItem(
        child: Text(
          "Payments",
          style: TextStyle(color: DesignStyle.white),
        ),
      ),
      PopupMenuItem(
        child: Text(
          "Setting",
          style: TextStyle(color: DesignStyle.white),
        ),
      ),
    ],
    [
      PopupMenuItem(
        child: Text(
          "Status privacy",
          style: TextStyle(color: DesignStyle.white),
        ),
      ),
      PopupMenuItem(
        child: Text(
          "Settings",
          style: TextStyle(color: DesignStyle.white),
        ),
      ),
    ],
    [
      PopupMenuItem(
        child: Text(
          "Clear call log",
          style: TextStyle(color: DesignStyle.white),
        ),
      ),
      PopupMenuItem(
        child: Text(
          "Settings",
          style: TextStyle(color: DesignStyle.white),
        ),
      ),
    ],
  ];
  int i = 0;

  void popUp(index) {
    i = index;
  }
}
// class HomeProvider extends ChangeNotifier {
//   Widget pop_menu() {
//     return PopupMenuButton<int>(
//       itemBuilder: (context) => [
//         PopupMenuItem(
//           value: 1,
//           child: Text("New group"),
//         ),
//         PopupMenuItem(
//           value: 2,
//           child: Text("New broadcast"),
//         ),
//         PopupMenuItem(
//           value: 3,
//           child: Text("Linked devices"),
//         ),
//         PopupMenuItem(
//           value: 4,
//           child: Text("Starred messages"),
//         ),
//         PopupMenuItem(
//           value: 5,
//           child: Text("Payments"),
//         ),
//         PopupMenuItem(
//           value: 5,
//           child: Text("Settings"),
//         ),
//       ],
//     );
//     notifyListeners();
//   }
// }
