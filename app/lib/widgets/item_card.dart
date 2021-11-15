import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String? description;
  final String? image;
  final bool showFolderIcon;
  final bool showMoreIcon;
  final bool showHugeTitle;

  const ItemCard({
    Key? key,
    required this.title,
    this.description,
    this.image,
    this.showFolderIcon = false,
    this.showMoreIcon = false,
    this.showHugeTitle = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appSecondaryColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      padding: const EdgeInsets.all(20.0),
      width: 300.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showFolderIcon)
            Column(
              children: [
                Icon(
                  Icons.folder,
                  color: Colors.grey,
                  size: 30.0,
                ),
                SizedBox(height: 20.0),
              ],
            ),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: showHugeTitle ? 22.0 : 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (description != null)
            Column(
              children: [
                const SizedBox(height: 10.0),
                Text(
                  description!,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(rickImage),
                    radius: 15.0,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'Rick Astley',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              if (showMoreIcon)
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 15.0,
                ),
            ],
          )
        ],
      ),
    );
  }
}
