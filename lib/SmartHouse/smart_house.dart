import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ichi_app/util/smart_device_box.dart';

class SmartHome extends StatefulWidget {
  const SmartHome({Key? key}) : super(key: key);

  @override
  State<SmartHome> createState() => _SmartHomeState();
}

class _SmartHomeState extends State<SmartHome> {
  final List mySmartDevices = [
    //[smartdevicename, smartdeviceicon, powerstatus]
    ["Smart Light", "lib/Assets/light.png", true],
    ["Smart AC", "lib/Assets/ac.png", false],
    ["Smart TV", "lib/Assets/tv.png", false],
    ["Smart Fan", "lib/Assets/fan.png", false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home_max_outlined,
                    size: 35,
                    color: Colors.grey[800],
                  ),
                  Icon(
                    Icons.person,
                    size: 35,
                    color: Colors.grey[800],
                  )
                ],
              ),
            ),

            //title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Home',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[700],
                      ),
                    ),
                    Text(
                      'Heical Chandra',
                      style: GoogleFonts.bebasNeue(
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
                Container()
              ]),
            ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Divider(
                color: Colors.grey[400],
                thickness: 2,
              ),
            ),

            const SizedBox(height: 20),
            //smart devices
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text('Smart Devices',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800])),
            ),

            Expanded(
                child: GridView.builder(
                    padding: const EdgeInsets.all(25),
                    itemCount: mySmartDevices.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                    itemBuilder: (context, index) {
                      return SmartDeviceBox(
                        smartDeviceName: mySmartDevices[index][0],
                        iconPath: mySmartDevices[index][1],
                        powerOn: mySmartDevices[index][2],
                        onChanged: (value) {
                          setState(() {
                            mySmartDevices[index][2] = value;
                          });
                        },
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
