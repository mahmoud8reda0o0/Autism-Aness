import 'package:autism_app/Statemanagement/Provider/ProviderLevelFormOne.dart';
import 'package:autism_app/UI/Screen/StartPage/Instruction/AppInformation.dart';
import 'package:autism_app/UI/Screen/StartPage/LevelMap/LevelMap.dart';
import 'package:autism_app/UI/Screen/StartPage/profile/Personal%20Page.dart';
import 'package:autism_app/UI/helper/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StartPage extends StatefulWidget {
  State<StatefulWidget> createState() => StartPage_s();
}

class StartPage_s extends State<StartPage>with TickerProviderStateMixin {
  Widget build(BuildContext context) {
     Provider.of<ProviderLevelFormOne>(context).levelmapTabController=TabController(length: 3, vsync: this,initialIndex: Provider.of<ProviderLevelFormOne>(context).levelmapInitIndex);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MyPageSize.height(context),
              width: MyPageSize.width(context),
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: Provider.of<ProviderLevelFormOne>(context).levelmapTabController,
                children: [
                  LevelMap(),
                  PresonalPage(),
                  AppInfo(),
                ],
              ),
            ),
            // Column(
            //   children: [
            //     Expanded(
            //       flex: 2,
            //       child: Image(
            //         fit: BoxFit.fitWidth,
            //         image: AssetImage('assets/image/backscreen1.png'),
            //       ),
            //     ),
            //     Expanded(
            //       flex: 8,
            //       child: Image(
            //         fit: BoxFit.fitWidth,
            //         image: AssetImage('assets/image/backscreen.png'),
            //       ),
            //     ),
            //   ],
            // ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MyPageSize.height(context) * 0.87,
                  width: MyPageSize.width(context),
                  //color: Colors.redAccent,

                ),
                Container(
                  height: MyPageSize.height(context) * 0.08,
                  width: MyPageSize.width(context) * 0.9,
                  decoration: BoxDecoration(
                    color: MyColor().pink,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3))
                    ],
                  ),
                  child: TabBar(
                    labelColor: Colors.white,
                    indicatorColor: MyColor().pink,
                    unselectedLabelColor: MyColor().gray_white,

                    controller: Provider.of<ProviderLevelFormOne>(context).levelmapTabController,
                    tabs: [
                      tabBarIcon(icons: Icons.house),
                      tabBarIcon(icons: Icons.person),
                      tabBarIcon(icons: Icons.library_books)
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget tabBarIcon({required IconData icons}){
    return Icon(
      icons,
      //color: Colors.white,
      size: 40,
    );
  }
}
