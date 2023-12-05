
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView (
      scrollDirection: Axis.horizontal,
      child: Row(

        children: [
           for(int i=1; i<8; i++)
           Container(

             margin: EdgeInsets.symmetric(horizontal: 10),
             padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                color: Colors.white,

             ),
                child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                       "images/$i.png",
                         height: 40,
                         width: 40,
                    ),
                   Text(
                     "Bag",
                      style: TextStyle(
                         fontSize: 18,
                        fontWeight: FontWeight.bold,
                         color: Color(0xFF4C53A5),
                      ),
                   ),
                  ],
                ),
           )
        ],
      ),
    );
  }
}
