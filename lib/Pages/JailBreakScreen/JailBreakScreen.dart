import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JailBreakScreen extends StatefulWidget {
  const JailBreakScreen({super.key});

  @override
  State<JailBreakScreen> createState() => _JailBreakScreenState();
}

class _JailBreakScreenState extends State<JailBreakScreen> {
  @override
  Widget build(BuildContext context) {
    // if the back navigation is triggered then pop out of the screen
    return WillPopScope(
      onWillPop: () async {
        // Determine if the back navigation is triggered by a gesture
        bool isGesture =
            await Future.delayed(const Duration(milliseconds: 50), () {
                  return ModalRoute.of(context)?.isCurrent;
                }) ??
                false;

        if (isGesture) {
          // Handle the back navigation and come out of the application
          SystemNavigator.pop();
        }
        return false;
      },
      child: Scaffold(
          body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
    
            //for adding background color
            gradient: LinearGradient(colors: [Colors.blue, Colors.purple])),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // display the jail break icon/ image
            Icon(
              Icons.security_sharp,
              size: 200,
            ),
    
            //jail break screen text
            Text("JailBreak",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
          ],
        ),
      )),
    );
  }
}
