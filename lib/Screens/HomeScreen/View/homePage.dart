import 'package:demo18/Screens/CallScreen/View/callPage.dart';
import 'package:demo18/Screens/ChatScreen/View/chatPage.dart';
import 'package:demo18/Screens/CommunityScreen/View/communityPage.dart';
import 'package:demo18/Screens/HomeScreen/Provider/homeProvider.dart';
import 'package:demo18/Screens/StatusScreen/View/statusPage.dart';
import 'package:demo18/Utility/constant.dart';
import 'package:demo18/Utility/popUp.dart';
import 'package:demo18/main.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeProvider? providerTrue;
  HomeProvider? providerFalse;
  @override
  Widget build(BuildContext context) {
    providerTrue = Provider.of<HomeProvider>(context, listen: true);
    providerFalse = Provider.of<HomeProvider>(context, listen: false);
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: DesignStyle.appbar_color,
            title: Text(
              "WhatsApp",
              style: TextStyle(color: DesignStyle.grey),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.photo_camera,
                  color: DesignStyle.grey,
                ),
              ),
              wtwelvesize(),
              Icon(
                Icons.search,
                color: DesignStyle.grey,
              ),
              wtwelvesize(),
              Theme(
                  data: Theme.of(context).copyWith(
                    cardColor: DesignStyle.black,
                  ),
                  child: PopupMenuButton(
                    itemBuilder: (context) {
                      return providerFalse!.pop[providerFalse!.i];
                    },
                  )

                  // PopupMenuButton<int>(
                  //   icon: Icon(Icons.menu, color: DesignStyle.grey),
                  //   itemBuilder: (context) => [
                  //     PopupMenuItem(
                  //       value: 1,
                  //       child: Text(
                  //         "New group",
                  //         style: TextStyle(color: DesignStyle.white),
                  //       ),
                  //     ),
                  //     PopupMenuItem(
                  //       value: 2,
                  //       child: Text("New broadcast",
                  //           style: TextStyle(color: DesignStyle.white)),
                  //     ),
                  //     PopupMenuItem(
                  //       value: 3,
                  //       child: Text("Linked devices",
                  //           style: TextStyle(color: DesignStyle.white)),
                  //     ),
                  //     PopupMenuItem(
                  //       value: 4,
                  //       child: Text("Starred messages",
                  //           style: TextStyle(color: DesignStyle.white)),
                  //     ),
                  //     PopupMenuItem(
                  //       value: 5,
                  //       child: Text("Payments",
                  //           style: TextStyle(color: DesignStyle.white)),
                  //     ),
                  //     PopupMenuItem(
                  //       value: 6,
                  //       child: Text("Settings",
                  //           style: TextStyle(color: DesignStyle.white)),
                  //     ),
                  //   ],
                  // )
                  ),

              //   offset: Offset(0, 100),
              //   color: Colors.grey,
              //   elevation: 2,

              //   onSelected: (value) {
              //     // if value 1 show dialog
              //     if (value == 1) {
              //       _showDialog(context);
              //       // if value 2 show dialog
              //     } else if (value == 2) {
              //       _showDialog(context);
              //     }
              //   },
              //   ),
            ],
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: DesignStyle.primary,
              unselectedLabelColor: DesignStyle.grey,
              indicatorColor: DesignStyle.primary,
              indicatorWeight: 4,
              onTap: (index) {
                providerTrue!.popUp(index);
              },
              tabs: [
                Tab(
                    child: Icon(
                  Icons.supervisor_account,
                )),
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CommunityPage(),
              ChatPage(),
              StatusPage(),
              CallPage(),
            ],
          ),
        ),
      ),
    );
  }
}
