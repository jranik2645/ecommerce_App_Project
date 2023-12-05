
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app_project/widgets/CategoriesWidget.dart';
import 'package:ecommerce_app_project/widgets/HomeAppBar.dart';
import 'package:ecommerce_app_project/widgets/ItemsWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
         children: [
             HomeAppBar(),
             Container(
                 //temporary height//
             //  height: 500,
               padding: EdgeInsets.only(top: 15),
               decoration: BoxDecoration(
                  color: Color(0xFFEDECF2),
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(35),
                   topRight: Radius.circular(35),
                 )
               ),
                child: Column(
                    children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                           padding: EdgeInsets.symmetric(
                              horizontal: 15
                           ),
                            height: 50,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(30),

                           ),
                           child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5),
                                  height: 60,
                                  width: 300,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Search here..."
                                    ),
                                  ),
                                ),
                                Spacer(),
                                  Icon(
                                     Icons.camera_alt,
                                    size: 30,
                                     color: Color(0xFF4C53A5),
                                  )

                              ],
                           ),
                        ),
                        Container(
                           // alignment: Alignment.centerLeft,
                            margin: EdgeInsets.symmetric(
                              vertical: 20,
                               horizontal: 10,
                            ),
                            child: Text(
                               "Categories",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4C53A5),
                              ),
                            ),
                        ),
                             //Categories Widget//
                        CategoriesWidget(),

                         //Items//
                      Container(
                          alignment: Alignment.centerLeft,
                         margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        child: Text(
                           "Best Selling",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),

                      ),
                      ItemsWidget(),
                  ],
                ),
             )
         ],
      ),
      bottomNavigationBar: CurvedNavigationBar(

        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.add, size: 30),
          Icon(CupertinoIcons.cart, size: 30),

          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Color(0xFF4C53A5),
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
           // _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
