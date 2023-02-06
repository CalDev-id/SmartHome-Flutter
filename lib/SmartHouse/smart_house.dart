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
    ["Kita Ikuyo", "lib/Assets/kita2.png", true, Colors.red],
    ["Nijika Ijichi", "lib/Assets/nijika2.png", false, Colors.yellow[600]],
    ["Ryou yamada", "lib/Assets/ryo2.png", false, Colors.blue],
    ["Hitori Gotou", "lib/Assets/bocchi2.png", false, Colors.pink],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bocchi',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(
                          'THE ROCK',
                          style: GoogleFonts.bebasNeue(
                            fontSize: 50,
                          ),
                        ),
                        Text(
                          "The Kessoku band",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[700],
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      "lib/Assets/kessoku.png",
                      height: 100,
                    )
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
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text('Members :',
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
                        color: mySmartDevices[index][3],
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
