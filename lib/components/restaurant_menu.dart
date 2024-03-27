import "package:flutter/material.dart";

class RestaurantMenu extends StatelessWidget {
  final String _title;
  final String _price;
  final String _image;
  final Function _onTap;
  final int _widgetCount;
  const RestaurantMenu(
      {super.key,
      required String title,
      required String price,
      required String image,
      int widgetCount = 1,
      required Function onTap})
      : _title = title,
        _price = price,
        _image = image,
        _onTap = onTap,
        _widgetCount =
            widgetCount; //tek satırda kullanılan widget sayısı text taşmalarını engellemek için

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () => _onTap,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:
                      FittedBox(fit: BoxFit.cover, child: Image.asset(_image))),
            ),
            Positioned(
              left: 5,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / _widgetCount -
                    15, // containerin boyu 1 satırdaki widget sayısına göre ayarlanıyor
                child: Text(
                  _title,
                  maxLines: 2,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 5,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 2)),
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  _price,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
