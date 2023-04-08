import 'package:demo18/Utility/constant.dart';
import 'package:demo18/main.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatefulWidget {
  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    // i = 0;
    return SafeArea(
      child: Scaffold(
        backgroundColor: DesignStyle.black,
        body: SingleChildScrollView(
          child: Center(
            child: Image.asset("assets/images/community.jpeg"),
          ),
        ),
      ),
    );
  }
}
