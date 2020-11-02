import 'package:Dashboard/resource/pages/home_page.dart';
import 'package:Dashboard/resource/sidebar/sidebar.dart';
import 'package:flutter/material.dart';

class SideBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            body:  Stack(
            children: <Widget>[
                HomePage(),
                SideBar()
        ],
      ),             
    )
   );
  }
}