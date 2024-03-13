import 'package:flutter/material.dart';
import 'package:yemeksepeti/components/food_card.dart';
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
      body: Column(
        children: [
          SizedBox(
              height: 200,
              child: Row(
                children: [
                  Expanded(
                    child: FoodCard(
                      image: Image.asset(Images.doner),
                      price: "Minimum 90 TL",
                      like: "+100",
                      time: "20 dakika",
                      title: "Döner",
                    ),
                  ),
                  Expanded(
                    child: FoodCard(
                      image: Image.asset(Images.doner),
                      price: "Minimum 90 TL",
                      like: "+100",
                      time: "20 dakika",
                      title: "Döner",
                    ),
                  ),
                  Expanded(
                    child: FoodCard(
                      image: Image.asset(Images.doner),
                      price: "Minimum 90 TL",
                      like: "+100",
                      time: "20 dakika",
                      title: "Döner",
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 200,
            width: 200,
            child: FoodCard(
              image: Image.asset(Images.burger),
              price: "Minimum 90 TL",
              like: "+100",
              time: "20 dakika",
              title: "Burger",
            ),
          ),
        ],
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
