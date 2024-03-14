import "package:flutter/material.dart";
import "package:yemeksepeti/components/food_card.dart";

class CategoryCard extends StatefulWidget {
  const CategoryCard({super.key, required this.image, required this.title});

  final Image? image;
  final String? title;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  Image? _image;
  String? _title;

  @override
  void initState() {
    super.initState();
    _image = widget.image;
    _title = widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.all(CategoryCardTheme.padding),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: FittedBox(
                            fit: BoxFit.cover,
                            child: _image ?? const Text("Görüntülenemiyor."))),
                  ),
                ),
                Flexible(
                  child: Text(
                    _title ?? "",
                    overflow: CustomCardTheme.textOverflow,
                    maxLines: CustomCardTheme.maxLine2,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCardTheme {
  static double padding = 10;
  static BorderRadius borderRadius = BorderRadius.circular(10);
  static BoxDecoration boxDecoration = BoxDecoration(
    color: Colors.amber,
    shape: BoxShape.rectangle,
    borderRadius: borderRadius,
  );
}
