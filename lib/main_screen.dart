import 'package:buff_burger_app/constants.dart';
import 'package:buff_burger_app/home_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  String pageActive = 'Home';
  _pageView() {
    switch (pageActive) {
      case 'Home':
        return HomePage();
      case 'Menu':
        return Container();
      case 'History':
        return Container();
      case 'Tag':
        return Container();
      case 'Settings':
        return Container();
      default:
      return HomePage();
    }
  }
  _setPage(String page){
    setState(() {
      pageActive =page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: _sideMenu(),
          ),
          Expanded(
              flex: 13,
              child: Container(
                padding: EdgeInsets.all(defaultPadding),
                margin:  EdgeInsets.only(top: defaultPadding, right: defaultPadding, bottom: defaultPadding),
                decoration: BoxDecoration(color: const Color.fromARGB(255, 20, 25, 43), borderRadius: BorderRadius.circular(20)),
                height: MediaQuery.of(context).size.height,
                child: _pageView()
              )),
        ],
      ),
    ));
  }

  Widget logo() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(defaultPadding),
          padding: EdgeInsets.all(defaultPadding),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
          child: Icon(
            Icons.fastfood,
          ),
        ),
        Text('Buff Burger',
            style: titleMediumBold(context).copyWith(fontSize: 12)),
      ],
    );
  }

  Widget _sideMenu() {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: defaultPadding * 3),
        child: logo(),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: ListView(
            children: [
              _itemMenu(
                title: 'Home',
                icon: Icons.rocket,
              ),
              _itemMenu(
                title: 'Menu',
                icon: Icons.menu,
              ),
              _itemMenu(
                title: 'History',
                icon: Icons.history,
              ),
              _itemMenu(
                title: 'Tag',
                icon: Icons.discount_outlined,
              ),
              _itemMenu(
                title: 'Settings',
                icon: Icons.settings,
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  Widget _itemMenu({required String title, required IconData icon}) {
    return GestureDetector(
      onTap: () => _setPage(title),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.slowMiddle,
        decoration: BoxDecoration(
            color: pageActive == title ? Colors.orange : Colors.transparent,
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.symmetric(vertical: defaultPadding),
        margin: EdgeInsets.all(defaultPadding / 2),
        child: Column(
          children: [
            Icon(icon),
            Text(
              title,
              style: bodyLargeBold(context).copyWith(fontSize: 9),
            ),
          ],
        ),
      ),
    );
  }
}
