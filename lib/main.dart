import 'package:demo18/Screens/CallScreen/Provider/callProvider.dart';
import 'package:demo18/Screens/CallScreen/View/callPage.dart';
import 'package:demo18/Screens/ChatScreen/Provider/chatProvider.dart';
import 'package:demo18/Screens/ChatScreen/View/chatPage.dart';
import 'package:demo18/Screens/CommunityScreen/View/communityPage.dart';
import 'package:demo18/Screens/HomeScreen/View/homePage.dart';
import 'package:demo18/Screens/StatusScreen/Provider/statusProvider.dart';
import 'package:demo18/Screens/StatusScreen/View/statusPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'Screens/HomeScreen/Provider/homeProvider.dart';

int? i;
void main() {
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => HomeProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => ChatProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => StatusProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => CallProvider(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/home',
          routes: {
            '/chat': (context) => ChatPage(),
            '/status': (context) => StatusPage(),
            '/call': (context) => CallPage(),
            '/home': (context) => HomePage(),
            '/community': (context) => CommunityPage(),
          },
        ),
      );
    }),
  );
}
