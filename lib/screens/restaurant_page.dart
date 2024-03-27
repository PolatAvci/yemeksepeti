import "package:flutter/material.dart";
import "package:yemeksepeti/components/comment.dart";
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              Row(
                children: [
                  Icon(Icons.favorite, color: AppTheme.primaryColor),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Popüler",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Restoranın en çok tercih edilen ürünleri")),
              ),
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
              ),
            ]),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Flexible(
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    "Diğer kullanıcıların yorumları",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    "Tümünü gör",
                    style: TextStyle(
                        color: AppTheme.primaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ]),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: SizedBox(width: 300, child: Comment()))),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
