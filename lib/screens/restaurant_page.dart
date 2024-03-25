import "package:flutter/material.dart";
import "package:yemeksepeti/components/restaurant_menu.dart";
import "package:yemeksepeti/main.dart";
import "package:yemeksepeti/screens/home_screen.dart";

class RestaurantPage extends StatelessWidget {
  const RestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppTheme.primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: AppTheme.primaryColor,
                size: 30,
              ))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              RestaurantMenu(
                title: "Big Mac Menü",
                image: Images.burger,
                onTap: () {},
                price: "230 TL",
                widgetCount: 2,
              ),
              RestaurantMenu(
                title: "Big Mac Menü",
                image: Images.burger,
                onTap: () {},
                price: "230 TL",
                widgetCount: 2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
