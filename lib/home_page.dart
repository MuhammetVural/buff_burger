import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Buff Restourant',
                          style: headlineLargeBold(context),
                        ),
                        Text(
                          'Date Time',
                          style: bodyLargeBold(context)
                              .copyWith(color: Colors.white70, fontSize: 12),
                        ),
                      ],
                    ),
                    Spacer(),
                    Expanded(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: defaultPadding / 2),
                        decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultPadding),
                              child: Icon(
                                Icons.search,
                                color: Colors.white70,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                    isDense: true,
                                    border: InputBorder.none,
                                    hintText: 'Search menu here...',
                                    hintStyle: TextStyle(fontSize: 12)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), //style: bodyLargeBold(context),),
                  ],
                ),
                Expanded(
                  flex: 2,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding * 2),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Categories(
                            title: 'Burger',
                            svgSrc: 'assets/icons/media_file.svg');
                      }),
                ),
                Expanded(
                  flex: 9,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 250,
                          crossAxisCount: 4,
                          crossAxisSpacing: defaultPadding,
                          mainAxisSpacing: defaultPadding),
                      itemBuilder: (context, index) => BurgerCard()),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order',
                        style: headlineLargeBold(context),
                      ),
                      Text(
                        'Table 8',
                        style: bodyLargeBold(context)
                            .copyWith(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding * 2),
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return OrderCard();
                        }),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(defaultPadding),
                      margin: EdgeInsets.symmetric(vertical: defaultPadding),
                      decoration: radius20Decoration().copyWith(),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sub Total',
                                style: headlineLargeBold(context).copyWith(
                                    fontSize: 20, color: Colors.white70),
                              ),
                              Text(
                                '500 TL',
                                style: headlineLargeBold(context).copyWith(
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: defaultPadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Tax',
                                  style: headlineLargeBold(context).copyWith(
                                      fontSize: 20, color: Colors.white70),
                                ),
                                Text(
                                  '50 TL',
                                  style: headlineLargeBold(context).copyWith(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: defaultPadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total',
                                  style: headlineLargeBold(context).copyWith(
                                      fontSize: 20, color: Colors.white70),
                                ),
                                Text(
                                  '550 TL',
                                  style: headlineLargeBold(context).copyWith(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                backgroundColor: Colors.orange,
                                foregroundColor: Colors.white,
                                textStyle: bodyLargeBold(context).copyWith(),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Order Now',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: defaultPadding / 2),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/nusret.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Original Burger',
                  style: bodyLargeBold(context)
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                Text(
                  '200 TL',
                  style: headlineLargeBold(context).copyWith(fontSize: 22),
                )
              ],
            ),
          ),
          Text(
            '2x',
            style: headlineLargeBold(context).copyWith(fontSize: 20),
          )
        ],
      ),
    );
  }
}

class BurgerCard extends StatelessWidget {
  const BurgerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width/4,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/nusret.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: defaultPadding / 2, bottom: defaultPadding),
            child: Text(
              'Original Burger',
              style: headlineLargeBold(context).copyWith(fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '200 TL',
                style: headlineLargeBold(context)
                    .copyWith(color: Colors.orangeAccent, fontSize: 20),
              ),
              Text(
                '11 Item',
                style: headlineLargeBold(context)
                    .copyWith(color: Colors.white70, fontSize: 17),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.title,
    required this.svgSrc,
  });
  final String title, svgSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: defaultPadding),
      padding: EdgeInsets.symmetric(horizontal: defaultPadding * 3.3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(svgSrc),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              title,
              style: headlineLargeBold(context).copyWith(fontSize: 20),
            ),
          ),
        ],
      ),
      decoration: const BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
