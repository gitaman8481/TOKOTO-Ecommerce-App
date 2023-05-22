import 'package:flutter/material.dart';

import '../../../utils/constatns.dart';

class ProductSearchScreenItemCard2 extends StatelessWidget {
  ProductSearchScreenItemCard2({
    Key? key,
    this.width = 150,
    this.aspectRetio = 1.02,
    required this.productImage,
    this.productName = 'Gaming',
    this.color = Colors.white,
    required this.price,
    this.onTap,
  }) : super(key: key);

  final double width, aspectRetio;
  final String productImage;
  final String productName;

  final Color color;
  final String price;

  final VoidCallback? onTap;
  bool? isTransparent = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(right: 8, top: 8, bottom: 8),
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: width,
              height: 110,
              decoration: BoxDecoration(
                color: color.withOpacity(.3),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(
                    productImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, top: 4, bottom: 8),
              child: Text(
                price,
                style: const TextStyle(
                  fontSize: 12,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}