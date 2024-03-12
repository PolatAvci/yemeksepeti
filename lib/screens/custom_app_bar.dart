import 'package:flutter/material.dart';
import 'package:yemeksepeti/main.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            color: Theme.of(context).appBarTheme.backgroundColor,
            child: const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              child: Column(
                children: [
                  Row(children: [
                    Expanded(
                      flex: 1,
                      child: AppBarMenuButton(),
                    ),
                    Expanded(
                      flex: 8,
                      child: AppBarTitles(),
                    ),
                    Expanded(
                      flex: 1,
                      child: AppBarShoppingButton(),
                    ),
                  ]),
                  AppBarSearchBar()
                ],
              ),
            )));
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 140);
}

class AppBarMenuButton extends StatelessWidget {
  const AppBarMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.menu,
          color: AppTheme.appbarColor,
        ));
  }
}

class AppBarTitles extends StatelessWidget {
  const AppBarTitles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, left: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deneme abcde cd.",
            style: AppTheme.appbarTextStyle,
            maxLines: 1,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              "abcde fvjfnbjk ",
              style: AppTheme.appbarTextStyle,
            ),
          )
        ],
      ),
    );
  }
}

class AppBarShoppingButton extends StatelessWidget {
  const AppBarShoppingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.shopping_bag_outlined,
          color: AppTheme.appbarColor,
        ));
  }
}

class AppBarSearchBar extends StatelessWidget {
  const AppBarSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: const Padding(
          padding: EdgeInsets.only(left: 10), child: Icon(Icons.search)),
      controller: SearchController(),
      hintText: "Restoran veya mağaza arayın",
    );
  }
}
