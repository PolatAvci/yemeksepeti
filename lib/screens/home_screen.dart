import 'package:flutter/material.dart';
import 'package:yemeksepeti/components/category_card.dart';
import 'package:yemeksepeti/components/food_card.dart';
import 'package:yemeksepeti/main.dart';
import '../components/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppTheme.mainPadding),
        child: ListView(children: [
          Text(
            "Popüler",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => SizedBox(
                width: 200,
                child: FoodCard(
                  image: Image.asset(Images.doner),
                  price: "Minimum 90 TL",
                  like: "+100",
                  time: "20 dakika",
                  title: "Döner",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 120,
            child: Row(children: [
              CategoryCard(
                title: "Burger",
                image: Image.asset(Images.burger),
              ),
              CategoryCard(
                title: "Burger",
                image: Image.asset(
                  Images.burger,
                ),
              ),
              CategoryCard(
                title: "Burger mvdkv dvmskmbkl",
                image: Image.asset(
                  Images.burger,
                ),
              ),
              CategoryCard(
                title: "Burger mvdkv dvmskmbkl",
                image: Image.asset(
                  Images.burger,
                ),
              ),
              CategoryCard(
                title: "Burger mvdkv dvmskmbkl",
                image: Image.asset(
                  Images.burger,
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
/*
  AppBar appbar() {
    return AppBar(
      title: const Text("Deneme"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_bag_outlined),
        )
      ],
    );
  }*/
}

class Images {
  static String doner = "images/durum-et-doner_b.png";
  static String burger = "images/burger.png";
}
