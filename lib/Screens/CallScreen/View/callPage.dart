import 'package:demo18/Screens/CallScreen/Provider/callProvider.dart';
import 'package:demo18/Utility/constant.dart';
import 'package:demo18/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  CallProvider? providerTrue;
  CallProvider? prociderFalse;
  @override
  Widget build(BuildContext context) {
    i = 3;
    providerTrue = Provider.of<CallProvider>(context, listen: true);
    prociderFalse = Provider.of<CallProvider>(context, listen: false);
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
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 13),
                    child: Row(
                      children: [
                        Transform.rotate(
                          angle: -math.pi / 3,
                          // child: Icon(
                          //   Icons.arrow_back,
                          //   size: 18,
                          //   color: DesignStyle.primary,
                          // ),
                          child: CircleAvatar(
                            radius: 28,
                            child: Icon(
                              Icons.link,
                            ),
                            backgroundColor: DesignStyle.primary,
                          ),
                        ),
                        wtwelvesize(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Create call link",
                              style: TextStyle(
                                  color: DesignStyle.white, fontSize: 15),
                            ),
                            hsixsize(),
                            Text(
                              "Share a link for your WhatApp call",
                              style: TextStyle(
                                color: DesignStyle.lightwhite,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  htensize(),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Recent",
                      style: TextStyle(
                          color: DesignStyle.lightwhite, fontSize: 16),
                    ),
                  ),
                  htensize(),
                  Expanded(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: providerTrue!.callData.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(
                                '${providerTrue!.callData[index].image}'),
                          ),

                          // CircleAvatar(
                          //   radius: 28,
                          //   backgroundImage: AssetImage(
                          //     "${providerTrue!.statusData[index].image}",
                          //   ),
                          // ),
                          title: Text(
                            "${providerTrue!.callData[index].name}",
                            style: TextStyle(color: DesignStyle.white),
                          ),
                          subtitle: Row(
                            children: [
                              Transform.rotate(
                                angle: -math.pi / 3,
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 18,
                                  color: DesignStyle.primary,
                                ),
                              ),
                              wfivesize(),
                              // Container(
                              //   child: Icon(
                              //     Icons.arrow_downward,
                              //     color: DesignStyle.primary,
                              //   ),
                              // ),
                              Text(
                                "${providerTrue!.callData[index].time}",
                                style: TextStyle(color: DesignStyle.lightwhite),
                              ),
                            ],
                          ),

                          trailing: Icon(
                            Icons.call,
                            color: DesignStyle.primary,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: DesignStyle.primary,
          child: Icon(Icons.add_ic_call),
          onPressed: () {},
          heroTag: null,
        ),
      ),
    );
  }
}
