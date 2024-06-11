import 'package:bopat/screen/admin/allmenu.dart';
import 'package:bopat/screen/admin/keranjang.dart';
import 'package:flutter/material.dart';
import 'package:bopat/config/asset.dart';
import 'package:bopat/screen/admin/home_screen.dart';

class DashboardAdmin extends StatefulWidget {
  const DashboardAdmin({super.key});

  @override
  State<DashboardAdmin> createState() => _DashboardAdminState();
}

class _DashboardAdminState extends State<DashboardAdmin> {
  int _selectedIndex = 0;
  String _title = '';
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Allmenu(),
    Keranjang(),
  ];

  @override
  void initState() {
    super.initState();
    _title = 'default';
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        child: AppBar(
          elevation: 2,
          toolbarHeight: 60,
          backgroundColor: Colors.brown,
          centerTitle: true,
          title: _title == 'default'
              ? Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  'Selamat Datang!',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.brown,
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage:
                              AssetImage('../asset/images/ikon.png'),
                          backgroundColor: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                )
              : Text(
                  _title,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
        ),
        preferredSize: Size.fromHeight(70.0),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.brown,
          selectedItemColor: Colors.brown,
          items: [
            BottomNavigationBarItem(
              label: "Beranda",
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              label: "Semua Menu",
              icon: Icon(Icons.food_bank_outlined),
            ),
            BottomNavigationBarItem(
              label: "Keranjang",
              icon: Icon(Icons.shopping_cart),
            ),
            // BottomNavigationBarItem(
            //   label: "navbar 3",
            //   icon: Icon(Icons.calendar_today),
            // ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'Beranda';
          }
          break;
        case 1:
          {
            _title = 'Semua Menu';
          }
          break;
        case 2:
          {
            _title = 'Keranjang';
          }
          break;
        case 3:
          {
            _title = 'navbar 3';
          }
          break;
      }
    });
  }
}
