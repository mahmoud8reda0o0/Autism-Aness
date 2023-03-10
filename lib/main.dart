import 'package:autism_app/Statemanagement/Provider/ProviderData.dart';
import 'package:autism_app/Statemanagement/Provider/ProviderLevelFormOne.dart';
import 'package:autism_app/UI/Screen/MainPage.dart';
//import 'package:autism_app/UI/Screen/Sign_In_Screens/CreateNewAccount.dart';
//import 'package:autism_app/UI/Screen/Sign_In_Screens/ForgetPassword.dart';
import 'package:autism_app/UI/Screen/SplashScreen.dart';
import 'package:autism_app/UI/Screen/StartPage/StartPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'UI/Screen/StartPage/LevelMap/LevelMap.dart';
import 'UI/Screen/games/LevelForm/LevelFormOne.dart';
import 'UI/Screen/games/levelOne/SelectFruit.dart';
//import 'UI/Screen/games/levelTwo/FruitName.dart';
import 'UI/Screen/games/levelTwo/RecordFruitName.dart';
//import 'UI/Screen/Sign_In_Screens/Sign_In.dart';
//import 'UI/Screen/Sign_In_Screens/forget_password/1.RestoreWay.dart';
// import 'UI/Screen/profile/Personal Page.dart';
//import 'UI/Screen/profile/ProfileSetting.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<ProviderLevelFormOne>(create: (context)=>ProviderLevelFormOne()),
      ChangeNotifierProvider<ProviderData>(create: (context)=>ProviderData()),
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

            fontFamily: ('Alexandria')
          //fontFamily: ('Alexandria')
        ),
        home:SplashScreen()
    ),);
  }
}


