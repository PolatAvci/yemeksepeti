import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yemeksepeti/main.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: AnnotatedRegion(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: AppTheme.primaryColor,
      ),
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
                SizedBox(height: 40, child: AppBarSearchBar())
              ],
            ),
          )),
    ));
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 120);
}

class AppBarMenuButton extends StatelessWidget {
  const AppBarMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: Icon(
          Icons.menu,
          color: AppTheme.appbarTextColor,
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
            AppTexts.appBarLocation1,
            style: AppTheme.appbarTextStyle.copyWith(
                fontWeight: AppTheme.fontWeightw600,
                fontSize: AppTheme.fontsize16),
            maxLines: 1,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              AppTexts.appBarLocation2,
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
          color: AppTheme.appbarTextColor,
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
      leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(
            Icons.search,
            color: AppTheme.searchBarHintColor,
          )),
      controller: SearchController(),
      hintText: AppTexts.appBarSearchHint,
      elevation: MaterialStateProperty.all(0),
      hintStyle: MaterialStateProperty.all(
          TextStyle(color: AppTheme.searchBarHintColor)),
    );
  }
}
