

import 'package:jailbreak/Pages/HomeScreen/HomeScreenModel.dart';

import '../../Helpers/AppNavigations/NavigationConfig.dart';
import '../../Helpers/AppNavigations/NavigationMixin.dart';
import '../../Helpers/JailBreakHandler/JailBreakFinder.dart';


class HomeScreenVM extends HomeScreenModel {

  Future<void> checkJailBreak()async{
    bool checkJailBreak  = await JailBreakFinder.checkJailBreak();
    if(checkJailBreak == true){
      navigationtoJailBreakScreen();
    }
  }
  

  // In case there is jailbreak push the jailbreak screen config
   void navigationtoJailBreakScreen(){
       navigationStream
        .add(NavigatorPush(pageConfig: Pages.jailBreakScreenConfig, data: null));
       
  }


}