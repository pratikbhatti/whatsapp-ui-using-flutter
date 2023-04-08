import 'package:demo18/Screens/ChatScreen/Provider/chatProvider.dart';
import 'package:demo18/Utility/chatPageutility.dart';
import 'package:demo18/Utility/constant.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:demo18/main.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  ChatProvider? providerTrue;
  ChatProvider? providerFalse;
  @override
  Widget build(BuildContext context) {
    i = 1;

    providerTrue = Provider.of<ChatProvider>(context, listen: true);
    providerFalse = Provider.of<ChatProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: DesignStyle.black,
        body: ListView.builder(
          itemCount: providerFalse!.chatData.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: InkWell(
                onTap: () {
                  dialog(context, "${providerTrue!.chatData[index].image}",
                      "${providerTrue!.chatData[index].name}");
                },
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage:
                      AssetImage("${providerTrue!.chatData[index].image}"),
                ),
              ),
              title: Text(
                "${providerTrue!.chatData[index].name}",
                style: TextStyle(color: DesignStyle.white),
              ),
              subtitle: Text(
                "${providerTrue!.chatData[index].subtitle}",
                style: TextStyle(color: DesignStyle.lightwhite),
              ),
              trailing: SizedBox(
                // height: 40.h,
                child: Column(
                  children: [
                    Text(
                      "${providerTrue!.chatData[index].time}",
                      style: TextStyle(color: DesignStyle.primary),
                    ),
                    htensize(),
                    // // ("${providerTrue!.chatData[index].chatNumber}" == 10)
                    //     ? Container(
                    //         height: 10,
                    //         width: 10,
                    //         color: Colors.amber,
                    //       )
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height / 35,
                      width: MediaQuery.of(context).size.height / 35,
                      // height: 2.h,
                      // width: 2.w,
                      child: Text(
                        "${providerTrue!.chatData[index].chatNumber}",
                        style: TextStyle(fontSize: 10),
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: DesignStyle.primary),
                    )
                  ],
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.chat),
          backgroundColor: DesignStyle.primary,
          onPressed: () {},
          // label: const Text('Approve'),
          // backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
