import 'package:demo18/Utility/constant.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void dialog(context, String img, String name) {
  showDialog(
    context: context,
    builder: (context) {
      var sp;
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        backgroundColor: DesignStyle.black,
        content: Container(
          height: MediaQuery.of(context).size.height / 2.8,
          width: MediaQuery.of(context).size.width / 2,
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  img,
                  height: 120.sp,
                  width: 120.sp,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 25,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: DesignStyle.lightwhite),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 2,
                    child: Text(
                      name,
                      style: TextStyle(color: DesignStyle.white),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: MediaQuery.of(context).size.height / 18,
                  width: double.infinity,
                  decoration: BoxDecoration(color: DesignStyle.black),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.chat,
                        color: DesignStyle.primary,
                      ),
                      Icon(Icons.call, color: DesignStyle.primary),
                      Icon(Icons.videocam, color: DesignStyle.primary),
                      Icon(Icons.info, color: DesignStyle.primary),
                    ],
                  ),
                ),
              )
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Container(
              //     decoration: BoxDecoration(color: DesignStyle.black),
              //     height: MediaQuery.of(context).size.height * 5,
              //     width: double.infinity,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceAround,
              //       children: [
              //         Icon(
              //           Icons.chat,
              //           color: DesignStyle.primary,
              //         ),
              //         Icon(Icons.call, color: DesignStyle.primary),
              //         Icon(Icons.videocam, color: DesignStyle.primary),
              //         Icon(Icons.info, color: DesignStyle.primary),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      );
    },
  );
}
