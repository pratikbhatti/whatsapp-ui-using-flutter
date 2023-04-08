import 'package:demo18/Screens/StatusScreen/Provider/statusProvider.dart';
import 'package:demo18/Utility/constant.dart';
import 'package:demo18/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  StatusProvider? providerTrue;
  StatusProvider? providerFalse;

  @override
  Widget build(BuildContext context) {
    i = 2;
    providerTrue = Provider.of<StatusProvider>(context, listen: true);
    providerFalse = Provider.of<StatusProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: DesignStyle.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 13),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  AssetImage("assets/images/3.png"),
                            ),
                            wtwelvesize(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "My Status",
                                  style: TextStyle(
                                      color: DesignStyle.white, fontSize: 15),
                                ),
                                hsixsize(),
                                Text(
                                  "Tap to add status update",
                                  style: TextStyle(
                                    color: DesignStyle.lightwhite,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 42, left: 45),
                        child: Container(
                          alignment: Alignment.center,
                          height: 23,
                          width: 23,
                          child: Icon(
                            Icons.add,
                            size: 20,
                            color: DesignStyle.white,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: DesignStyle.primary,
                            border:
                                Border.all(color: DesignStyle.black, width: 2 //
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  htensize(),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Recent updates",
                      style: TextStyle(
                          color: DesignStyle.lightwhite, fontSize: 16),
                    ),
                  ),
                  htensize(),

                  Expanded(
                    flex: 2,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: providerTrue!.statusData.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            radius: 28,
                            backgroundColor: DesignStyle.primary,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  '${providerTrue!.statusData[index].image}'),
                              radius: 25,
                            ),
                          ),

                          // CircleAvatar(
                          //   radius: 28,
                          //   backgroundImage: AssetImage(
                          //     "${providerTrue!.statusData[index].image}",
                          //   ),
                          // ),
                          title: Text(
                            "${providerTrue!.statusData[index].name}",
                            style: TextStyle(color: DesignStyle.white),
                          ),
                          subtitle: Text(
                            "${providerTrue!.statusData[index].time}",
                            style: TextStyle(color: DesignStyle.lightwhite),
                          ),
                        );
                      },
                    ),
                  ),
                  htensize(),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "viewed updates",
                      style: TextStyle(
                          color: DesignStyle.lightwhite, fontSize: 16),
                    ),
                  ),

                  Expanded(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: providerTrue!.statusViewData.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            radius: 28,
                            backgroundColor: DesignStyle.lightwhite,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  '${providerTrue!.statusViewData[index].image}'),
                              radius: 25,
                            ),
                          ),
                          title: Text(
                            "${providerTrue!.statusViewData[index].name}",
                            style: TextStyle(color: DesignStyle.white),
                          ),
                          subtitle: Text(
                            "${providerTrue!.statusViewData[index].time}",
                            style: TextStyle(color: DesignStyle.lightwhite),
                          ),
                        );
                      },
                    ),
                  ),

                  // Expanded(
                  //   child: Stack(
                  //     children: [
                  //       ListTile(
                  //         leading: CircleAvatar(
                  //           radius: 28,
                  //           backgroundImage: AssetImage("assets/images/1.png"),
                  //         ),
                  //         title: Text(
                  //           "My status",
                  //           style: TextStyle(
                  //               color: DesignStyle.white, fontSize: 15.sp),
                  //         ),
                  //         subtitle: Text(
                  //           "Tap to add status update",
                  //           style: TextStyle(color: DesignStyle.lightwhite),
                  //         ),
                  //       ),
                  //   Padding(
                  //     padding: const EdgeInsets.only(top: 38, left: 50),
                  //     child: Container(
                  //       alignment: Alignment.center,
                  //       height: 25,
                  //       width: 25,
                  //       child: Icon(Icons.add),
                  //       decoration: BoxDecoration(
                  //         shape: BoxShape.circle,
                  //         color: DesignStyle.primary,
                  //         border:
                  //             Border.all(color: DesignStyle.black, width: 1.5 //
                  //                 ),
                  //       ),
                  //     ),
                  //   ),
                  // ],
                  //   ),
                  // ),
                  // Text(
                  //   "Rexent updates",
                  //   style: TextStyle(color: DesignStyle.white, fontSize: 25),
                  // )
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Align(
          alignment: Alignment.bottomRight,
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            FloatingActionButton.small(
              backgroundColor: DesignStyle.lightwhite,
              child: Icon(Icons.edit),
              onPressed: () {},
              heroTag: null,
            ),
            htensize(),
            FloatingActionButton(
              backgroundColor: DesignStyle.primary,
              child: Icon(Icons.camera_enhance),
              onPressed: () {},
              heroTag: null,
            )
          ]

              // child: Icon(Icons.camera_enhance),
              // backgroundColor: DesignStyle.primary,
              // onPressed: () {},
              ),
        ),
      ),
    );
  }
}
