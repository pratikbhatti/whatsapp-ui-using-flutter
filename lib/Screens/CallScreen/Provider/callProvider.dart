import 'package:demo18/Screens/CallScreen/Modal/callModal.dart';
import 'package:demo18/Utility/constant.dart';
import 'package:flutter/material.dart';

class CallProvider extends ChangeNotifier {
  List<CallModal> callData = [
    CallModal(
      image: "assets/images/1.png",
      name: "Pratik",
      time: "18 December, 5:45 pm",
      last_icon: Icon(Icons.call, color: DesignStyle.primary),
    ),
    CallModal(
      image: "assets/images/2.png",
      name: "Sumit",
      time: "20 December, 5:45 pm",
      last_icon: Icon(Icons.videocam, color: DesignStyle.primary),
    ),
    CallModal(
      image: "assets/images/3.png",
      name: "Dharmik",
      time: "21 December, 5:45 pm",
      last_icon: Icon(Icons.videocam, color: DesignStyle.primary),
    ),
    CallModal(
      image: "assets/images/4.png",
      name: "Jayraj",
      time: "Today, 12:33 pm",
      last_icon: Icon(Icons.videocam, color: DesignStyle.primary),
    ),
    CallModal(
      image: "assets/images/5.png",
      name: "Bhavin",
      time: "Today, 11:57 pm",
      last_icon: Icon(Icons.call, color: DesignStyle.primary),
    ),
    CallModal(
      image: "assets/images/5.png",
      name: "Mayank",
      time: "Today, 10:22 am",
      last_icon: Icon(Icons.call, color: DesignStyle.primary),
    ),
    CallModal(
      image: "assets/images/7.png",
      name: "Vivek",
      time: "47 minutes ago",
      last_icon: Icon(Icons.videocam, color: DesignStyle.primary),
    ),
    CallModal(
      image: "assets/images/8.png",
      name: "Yash",
      time: "Today, 11:57 pm",
      last_icon: Icon(Icons.videocam, color: DesignStyle.primary),
    ),
    CallModal(
      image: "assets/images/9.png",
      name: "Tirth",
      time: "Yesterday, 11:57 pm",
      last_icon: Icon(Icons.videocam, color: DesignStyle.primary),
    ),
    CallModal(
      image: "assets/images/9.png",
      name: "Prajay",
      time: "Today, 12:57 pm",
      last_icon: Icon(Icons.videocam, color: DesignStyle.primary),
    ),
    CallModal(
      image: "assets/images/9.png",
      name: "Vidhit Sir",
      time: "Yesterday, 10:57 pm",
      last_icon: Icon(Icons.videocam, color: DesignStyle.primary),
    ),
    CallModal(
      image: "assets/images/9.png",
      name: "Prince",
      time: "Today, 8:57 pm",
      last_icon: Icon(Icons.videocam, color: DesignStyle.primary),
    ),
    CallModal(
      image: "assets/images/9.png",
      name: "Kritik",
      time: "Today, 7:57 pm",
      last_icon: Icon(Icons.videocam, color: DesignStyle.primary),
    ),
    CallModal(
      image: "assets/images/8.png",
      name: "Salman Khan",
      time: "Today, 7:57 pm",
      last_icon: Icon(
        Icons.videocam,
        color: DesignStyle.primary,
      ),
    ),
  ];
}
