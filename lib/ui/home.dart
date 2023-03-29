import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:suparibazar_flutter/ui/homeFragement.dart';
import 'package:suparibazar_flutter/ui/ordersFragement.dart';
import 'package:suparibazar_flutter/ui/productsFragement.dart';
import 'package:suparibazar_flutter/ui/profileFragement.dart';




class Home extends StatefulWidget {


  @override
  State<StatefulWidget> createState() =>homeState();


}

class homeState extends State<Home>{
  int _selectedIndex = 0;
  static  List<Widget> _widgetOptions = <Widget>[
    HomeFragement(),
    OrdersFragement(),
    ProductsFragement(),
    ProfileFragement(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {


    return AnnotatedRegion<SystemUiOverlayStyle>(
      // Use [SystemUiOverlayStyle.light] for white status bar
      // or [SystemUiOverlayStyle.dark] for black status bar
      // https://stackoverflow.com/a/58132007/1321917
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness:Brightness.dark
      ),
      child: Scaffold(


        body:  SafeArea(


          child: Container(
            color: Colors.white,
            child: _widgetOptions.elementAt(_selectedIndex),

          ),

        )
        ,bottomNavigationBar:  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:  Image.asset('assets/home.png',height: 20,width: 20,),
            activeIcon: Image.asset('assets/home_active.png',height: 20,width: 20,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon:  Image.asset('assets/orders.png',height: 20,width: 20,),
            activeIcon:  Image.asset('assets/orders_active.png',height: 20,width: 20,),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon:  Image.asset('assets/products.png',height: 20,width: 20,),
            activeIcon:  Image.asset('assets/products_active.png',height: 20,width: 20,),
            label: 'Products',
          ), BottomNavigationBarItem(
            icon:  Image.asset('assets/more.png',height: 20,width: 20,),
            activeIcon:  Image.asset('assets/more_active.png',height: 20,width: 20,),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.green[800],
        onTap: _onItemTapped,
      ),
      ) ,
    );







  }


}
