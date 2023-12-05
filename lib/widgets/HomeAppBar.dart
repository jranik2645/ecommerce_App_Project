import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.white,
       padding: EdgeInsets.all(25),
       child: Row(
           children: [
              Icon(
                  Icons.sort,
                  size: 30,
                  color: Color(0xFF4C53A5),
              ),
                Padding(padding: EdgeInsets.only(left: 20),
                  child: Text(
                       "DP Shop",
                    style: TextStyle(
                         fontSize: 23,
                         fontWeight: FontWeight.bold,
                         color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                 Spacer(),
             badges.Badge(
               position: badges.BadgePosition.topEnd(top: -10, end: -12),
               showBadge: true,
               ignorePointer: false,
               onTap: () {
                Navigator.pushNamed(context, "cartPage");


               },
               badgeContent:
                     Text("3",
               ),
               badgeStyle: badges.BadgeStyle(

                 badgeColor: Colors.red,
                 padding: EdgeInsets.all(6),
                 borderRadius: BorderRadius.circular(4),
                 borderSide: BorderSide(color: Colors.white, width:2),
                 elevation: 0,
               ),
               child: Icon(
                   Icons.shopping_bag_outlined,
                  size: 35,
               ),
             ),

           ],
       ),
    );
  }
}
