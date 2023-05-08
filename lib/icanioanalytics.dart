import 'package:package_info/package_info.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class AppLifecycleObserver extends WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    print(state);
    print("State is called");
    if (state == AppLifecycleState.resumed) {
      // App resumed, check if it was just installed
      final packageInfo = await PackageInfo.fromPlatform();
      // final isFirstInstall = await checkIfFirstInstall(packageInfo.packageName);
      print("App Resumed");
      // if (isFirstInstall) {
      //   // Handle app install event
      //   print('App Installed');
      // }
    } else if (state == AppLifecycleState.detached) {
      // App detached, check if it was uninstalled
      final packageInfo = await PackageInfo.fromPlatform();
      // final isUninstalled = await checkIfUninstalled(packageInfo.packageName);


    } else if (state == AppLifecycleState.inactive) {
      // App went to inactive state
      print('App went to inactive state');
    }
  }




}
