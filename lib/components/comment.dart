import 'package:flutter/material.dart';
import 'package:yemeksepeti/main.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "deneme deneme deneme deneme deneme deneme deneme deneme deneme deneme deneme deneme deneme deneme deneme deneme deneme deneme deneme",
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: AppTheme.primaryColor,
                    ),
                    Icon(
                      Icons.star,
                      color: AppTheme.primaryColor,
                    ),
                    Icon(
                      Icons.star,
                      color: AppTheme.primaryColor,
                    ),
                    Icon(
                      Icons.star,
                      color: AppTheme.primaryColor,
                    ),
                    Icon(
                      Icons.star,
                      color: AppTheme.primaryColor,
                    ),
                  ],
                ),
                Flexible(
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    "2 Hafta önce",
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
