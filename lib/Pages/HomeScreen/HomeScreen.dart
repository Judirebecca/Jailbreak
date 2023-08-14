// ignore_for_file: public_member_api_docs, sort_constructors_first, file_names

import 'package:flutter/material.dart';
import 'package:jailbreak/Helpers/JailBreakHandler/JailBreakFinder.dart';
import '../../Helpers/AppNavigations/NavigationHelpers.dart';

import '../../Helpers/AppNavigations/NavigationMixin.dart';
import 'HomeScreenVM.dart';

class HomeScreen extends StatefulWidget {
  final dynamic extraData;
  const HomeScreen({
    Key? key,
    required this.extraData,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenVM _homePageVM = HomeScreenVM();

  @override
  void initState() {
    super.initState();

    _homePageVM.checkJailBreak();

    // listen to the navigation stream in init state
    // if it is jailbreak then that screen is pushed
    _homePageVM.navigationStream.stream.listen((event) {
      if (event is NavigatorPush) {
        context.push(pageConfig: event.pageConfig, data: event.data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('HomeScreen'),
          onPressed: () {},
        ),
      ),
    );
  }
}
