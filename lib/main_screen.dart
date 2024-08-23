import 'package:buff_burger_app/constants.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Row(
                children: [
          Expanded(
              flex: 1,
              child: _sideMenu(),),
          Expanded(
              flex: 11,
              child: Container(
                height: 100,
                color: Colors.pink,
                child: Text('Buraya hambuger menu ve order kısmı gelecek'),
              )),
          
                ],
              ),
        ));
  }
}

Widget _sideMenu() {
  return Column(children: [
    Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding*3),
      child: Logo(),
    ),
    Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: ListView(
        children: [
           ItemMenu(title: 'Home', icon: Icons.rocket,),
            ItemMenu(title: 'Menu', icon: Icons.menu,),
            ItemMenu(title: 'History', icon: Icons.history,),
            ItemMenu(title: 'Tag', icon: Icons.discount_outlined,),
            ItemMenu(title: 'Settings', icon: Icons.settings,),
        ],
            ),
      ),),
  ]);
}

class ItemMenu extends StatelessWidget {
  const ItemMenu({
    super.key, required this.title, required this.icon,
  });
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(10)),
      
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      margin: EdgeInsets.all(defaultPadding/2),
      child: Column(children: [
        Icon(icon),
        Text(title, style: bodyLargeBold(context).copyWith(fontSize: 9),),
      ],),
    );
  }
}








class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(defaultPadding),
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.orange),
          child: Icon(Icons.fastfood, size: 50,),
        ),
        Text('Buff Burger', style: titleMediumBold(context)),
      ],
    );
  }
}
