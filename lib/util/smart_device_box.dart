import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SmartDeviceBox extends StatelessWidget {
  final String smartDeviceName;
  final String iconPath;
  final bool powerOn;
  final Color color;
  void Function(bool)? onChanged;

  SmartDeviceBox({
    Key? key,
    required this.smartDeviceName,
    required this.iconPath,
    required this.powerOn,
    required this.color,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: powerOn ? color : Colors.grey[100],
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.only(bottom: 20, top: 5),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //icon
              Image.asset(
                iconPath,
                height: 110,
                color: powerOn ? null : Colors.black,
              ),
              //name + toggle
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      smartDeviceName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: powerOn ? Colors.white : Colors.black),
                    ),
                  )),
                  Transform.rotate(
                      angle: pi / 2,
                      child:
                          CupertinoSwitch(value: powerOn, onChanged: onChanged))
                ],
              ),
            ]),
      ),
    );
  }
}
