import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> with SingleTickerProviderStateMixin<SideBar> {

   AnimationController _animationController;

  bool isOpenedSidebar = false;
  final _animationDuration = const Duration(milliseconds: 100);

  @override
  void initState() {
    super.initState();
     _animationController = AnimationController(vsync: this,duration: _animationDuration); 
  }


  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AnimatedPositioned(
        duration:_animationDuration ,
        top: 0,
        bottom: 0,
        left: isOpenedSidebar ? 0 : 0,
        right: isOpenedSidebar ? 0 : screenWidth - 45,
        child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Color(0xFF226AAA),
            )
          ),

            Align(
             alignment: Alignment(0,-0.9),
             child: Container(
             width: 35,
             height: 110,
             alignment: Alignment.centerLeft,
             decoration: BoxDecoration(
               color: Color(0xFF226AAA),
               borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.circular(80.0),
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.circular(80.0),
                  ),
             ),
             child: InkWell(
                  onTap: (){
                    setState(() {
                      isOpenedSidebar = !isOpenedSidebar;
                    });
                  },
                  child: Icon(
                    isOpenedSidebar ? Icons.close : Icons.menu,
                    color: Color(0xFF1BB5FD),
                    )
             ),
            ),
          )
        ],
      ),
    );
  }
}