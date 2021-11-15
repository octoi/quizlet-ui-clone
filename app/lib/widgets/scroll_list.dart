import 'package:app/utils/constants.dart';
import 'package:app/widgets/item_card.dart';
import 'package:flutter/material.dart';

class ScrollList extends StatelessWidget {
  final String title;
  final ItemCard card;
  final int length;
  const ScrollList({
    Key? key,
    required this.title,
    required this.card,
    this.length = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: const [
                  Text(
                    'View all',
                    style: TextStyle(
                      color: appTeal,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: appTeal,
                    size: 15.0,
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [for (int i = 0; i < length; i++) card],
          ),
        )
      ],
    );
  }
}
