
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:jailbreak/Helpers/Utilities/Utilities.dart';

class JailBreakFinder{

 static Future<bool> checkJailBreak() async{
    bool jailBroken = false;
    bool developerMode = false;
     try {
      jailBroken = await FlutterJailbreakDetection.jailbroken;
      developerMode = await FlutterJailbreakDetection.developerMode;
      // If jailbreak/rooted  device is indentified then return true
      // Otherwise return false
      return (jailBroken == true || developerMode == true)?true:false;
    } catch (e) {
      e.writeExceptionData();
      return false;
    }
  }

}