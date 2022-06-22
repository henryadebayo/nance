import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nance/PROVIDERS/wallet_providers.dart';
import 'package:nance/UI/bottom_navigation.dart';
import 'package:provider/provider.dart';

import 'UI/auth_screens/getStartedScreen.dart';
import 'UI/auth_screens/splashScreen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_)=> WalletProvider()
    )
  ],
  child: const MyApp()));
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   systemNavigationBarColor: Colors.blue,
  // ));

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: BottomNavigation(),
        home: SplashScreen(),
       // home: GetStartedScreen(),
      ),
      designSize: const Size(360, 690),
    );
  }
}
