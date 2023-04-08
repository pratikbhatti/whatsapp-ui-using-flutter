import 'package:demo18/Screens/ChatScreen/Modal/chatModal.dart';
import 'package:demo18/Screens/StatusScreen/Modal/statusModal.dart';
import 'package:flutter/cupertino.dart';

class StatusProvider extends ChangeNotifier {
  List<StatusModal> statusData = [
    StatusModal(
      image: "assets/images/1.png",
      name: "Pratik",
      time: "3 minutes ago",
    ),
    StatusModal(
      image: "assets/images/2.png",
      name: "Sumit",
      time: "41 minutes ago",
    ),
    StatusModal(
      image: "assets/images/3.png",
      name: "Dharmik",
      time: "47 minutes ago",
    ),
    StatusModal(
      image: "assets/images/4.png",
      name: "Jayraj",
      time: "Today, 12:33 pm",
    ),
    StatusModal(
      image: "assets/images/5.png",
      name: "Bhavin",
      time: "Today, 11:57 pm",
    ),
    StatusModal(
      image: "assets/images/5.png",
      name: "Mayank",
      time: "Today, 10:22 am",
    ),
    StatusModal(
      image: "assets/images/7.png",
      name: "Vivek",
      time: "47 minutes ago",
    ),
    // StatusModal(
    //   image: "assets/images/8.png",
    //   name: "Yash",
    //   time: "10:00 am",
    // ),
    // StatusModal(
    //   image: "assets/images/9.png",
    //   name: "Tirth",
    //   time: "8:00 am",
    // ),
    // StatusModal(
    //   image: "assets/images/10.png",
    //   name: "Prajay",
    //   time: "7:00 am",
    // ),
    // StatusModal(
    //   image: "assets/images/11.png",
    //   name: "Vidhit Sir",
    //   time: "8:00 am",
    // ),
    // StatusModal(
    //   image: "assets/images/12.png",
    //   name: "Prince",
    //   time: "8600 am",
    // ),
    // StatusModal(
    //   image: "assets/images/13.png",
    //   name: "Kritik",
    //   time: "11:00 am",
    // ),
    // StatusModal(
    //   image: "assets/images/14.png",
    //   name: "Salman Khan",
    //   time: "7:00 am",
    // ),
  ];
  List<StatusModal> statusViewData = [
    StatusModal(
      image: "assets/images/8.png",
      name: "Yash",
      time: "10:00 am",
    ),
    StatusModal(
      image: "assets/images/9.png",
      name: "Tirth",
      time: "8:00 am",
    ),
    StatusModal(
      image: "assets/images/1.png",
      name: "Prajay",
      time: "7:00 am",
    ),
    StatusModal(
      image: "assets/images/2.png",
      name: "Vidhit Sir",
      time: "8:00 am",
    ),
    StatusModal(
      image: "assets/images/3.png",
      name: "Prince",
      time: "8600 am",
    ),
    StatusModal(
      image: "assets/images/4.png",
      name: "Kritik",
      time: "11:00 am",
    ),
    StatusModal(
      image: "assets/images/5.png",
      name: "Salman Khan",
      time: "7:00 am",
    ),
  ];

  // List<homeModal> list1 = [];

}
