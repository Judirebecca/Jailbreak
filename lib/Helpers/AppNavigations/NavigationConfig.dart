import 'package:jailbreak/Pages/JailBreakScreen/JailBreakScreen.dart';

import 'NavigationHelpers.dart';
import '../../Pages/HomeScreen/HomeScreen.dart';

enum Routes {
  HomeScreen,
  JailBreakScreen,
}

class Pages{
  //! Data for Bottom Nav Config 
  Object? data; 
   
  //! Screen Config for HomeScreen
   static final PageConfig homeScreenConfig = PageConfig( route: Routes.HomeScreen, build: (_) => HomeScreen(extraData: homeScreenConfig.data));

  //! Screen Config for JailBreak screen
  static final PageConfig jailBreakScreenConfig = PageConfig( route: Routes.JailBreakScreen, build: (_) => const JailBreakScreen());
  //  );
}
