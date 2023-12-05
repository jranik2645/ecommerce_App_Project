import 'package:ecommerce_app_project/widgets/CardBottomNavBar.dart';
import 'package:ecommerce_app_project/widgets/CartAppBar.dart';
import 'package:ecommerce_app_project/widgets/CartItemSamples.dart';
import 'package:flutter/material.dart';

class cartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: Scaffold(
        body: ListView(
          children: [
            CartAppBar(),
            Container(
              //temporary height//

              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  CartItemSamples(),
                  Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(radius)
                    // ),
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 15,
                    ),
                    padding: EdgeInsets.all(10),

                     child: Row(
                        children: [
                           Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF4C53A5),
                                 borderRadius: BorderRadius.circular(20),
                              ),
                             child: Icon(
                                Icons.add,
                                color: Colors.white,
                             ),
                           ),
                           Padding(padding: EdgeInsets.symmetric(horizontal: 10),

                             child: Text(
                               "Add Coupon Code",
                                style: TextStyle(
                                   color: Color(0xFF4C53A5),
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                ),
                             ),
                           ),
                        ],
                     ),
                  ),
                ],
              ),
            ) ,
               Column(
                 children: [
                   Container(
                       height: 100,
                      color: Colors.grey.withOpacity(0.6),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                          Text("Total",
                            style: TextStyle(
                               fontSize: 25,
                               fontWeight: FontWeight.bold,
                               color: Color(0xFF4C53A5),
                            ),
                          ),
                             Text(":\$250",
                               style: TextStyle(
                                   fontSize: 25,
                                   fontWeight: FontWeight.bold,
                                 color: Colors.red,

                               ),
                             ),

                           ],
                        ),
                      ),
                   ),
                 ],
               ),
                SizedBox(height: 40,),
              InkWell(
                 onTap: (){
                     Navigator.pop(context);
                 },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFF4C53A5),
                       borderRadius: BorderRadius.circular(20),
                    ),
                   child: Text(
                       "Check Out",
                     style: TextStyle(
                        fontWeight: FontWeight.bold,
                         fontSize: 18,
                          color: Colors.white,

                     ),
                   ),

                ),
              ),
          ],

        ),

          // bottomNavigationBar: CardBottomNavBar(),
      ),
    );
  }
}
