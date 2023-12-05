

import 'package:flutter/material.dart';

class CardBottomNavBar extends StatelessWidget {
  const CardBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Container(
           padding: EdgeInsets.symmetric(horizontal: 20,
             vertical: 15,
           ),
           height: 150,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
                Row(
                   children: [
                        Text(
                           "Total",
                           style: TextStyle(
                              color: Color(0xFF4C53A5),
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                           ),
                        ),
                       Text(
                           "\$250",
                           style: TextStyle(
                              fontSize: 25
                           ),
                       ),
                   ],
                )
             ],
           ),
        ),

    );
  }
}
