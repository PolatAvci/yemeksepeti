import "package:flutter/material.dart";
import "package:yemeksepeti/main.dart";

class FoodCard extends StatefulWidget {
  const FoodCard(
      {super.key,
      required this.image,
      required this.title,
      required this.like,
      required this.time,
      required this.price});
  final String title;

  final String like;

  final String time;

  final Image image;

  final String price;

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  String? _title;

  String? _like;

  String? _time;

  Image? _image;

  String? _price;

  @override
  void initState() {
    super.initState();
    _title = widget.title;
    _like = widget.like;
    _time = widget.time;
    _image = widget.image;
    _price = widget.price;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: CustomCardTheme.cardPadding,
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: CustomCardTheme.imageBottomPadding,
              child: _image ?? const Text("Görüntülenemiyor"),
            )),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    _title ?? "",
                    maxLines: 1,
                    overflow: CustomCardTheme.textOverflow,
                    style: AppTheme.appbarTextStyle.copyWith(
                        color: AppTheme.textColor,
                        fontSize: CustomCardTheme.titleFontsize,
                        fontWeight: CustomCardTheme.titleFontWeight),
                  ),
                ),
                Expanded(
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Icon(
                      Icons.star,
                      color: AppTheme.primaryColor,
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          _like ?? "",
                          overflow: CustomCardTheme.textOverflow,
                          maxLines: CustomCardTheme.maxLine,
                        ),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
            Row(children: [
              Text(
                _price ?? "",
                maxLines: CustomCardTheme.maxLine,
              ),
            ]),
            Row(
              children: [
                const Icon(Icons.access_time),
                Text(
                  _time ?? "",
                  overflow: CustomCardTheme.textOverflow,
                  maxLines: CustomCardTheme.maxLine,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomCardTheme {
  static TextOverflow textOverflow = TextOverflow.ellipsis;
  static int maxLine = 1;
  static int maxLine2 = 2;
  static double titleFontsize = 20;
  static FontWeight titleFontWeight = FontWeight.w500;
  static EdgeInsets imageBottomPadding = const EdgeInsets.only(bottom: 10);
  static EdgeInsets cardPadding = const EdgeInsets.all(10);
  //static BorderRadius borderRadius = BorderRadius.circular(10);
  /*static BoxDecoration boxDecoration = BoxDecoration(
    color: Colors.amber,
    shape: BoxShape.rectangle,
    borderRadius: borderRadius,
  );*/
}
