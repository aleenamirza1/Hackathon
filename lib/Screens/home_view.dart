import 'package:flutter/material.dart';

import 'package:plantapp/bottombarscreens/shop.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController eatcontroller = TextEditingController();
  Widget mWidget = const Shop();
  int _selectedTab = 0;
  changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  Color primary = Color(0xff0d986a);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff0d986a)),
      body: _pages[_selectedTab],
      drawer: Drawer(
          backgroundColor: primary,
          child: Column(children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff0d986a)),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xff0d986a)),
                accountName: Text("Aleena Mirza"),
                accountEmail: Text("aleenamirza@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    child: Text("A", style: TextStyle(color: Colors.white)),
                    backgroundColor: Color.fromARGB(255, 5, 69, 8)),
                currentAccountPictureSize: Size.square(40.0),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Constants.drawerList.length,
                itemBuilder: (context, index) {
                  print(Constants.drawerList[index]);
                  return ListTile(
                    tileColor: Constants.drawerList[index].color,
                    title: Text(Constants.drawerList[index].title),
                    leading: Constants.drawerList[index].icon,
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                        mWidget = Constants.drawerList[index].widget;
                      });
                    },
                  );
                },
              ),
            )
          ])),
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: Colors.grey),
        child: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (index) => changeTab(index),
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "fav",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "messages",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "profile",
            )
          ],
        ),
      ),
    );
  }
}

List _pages = [
  const Center(child: Shop()),
  const Center(child: Shop()),
  const Center(child: Shop()),
  const Center(child: Shop()),
];
