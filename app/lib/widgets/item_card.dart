import 'package:app/utils/constants.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String? description;
  final String? image;
  final bool showFolderIcon;
  final bool showMoreIcon;
  final bool showHugeTitle;
  final bool showRecommended;

  const ItemCard({
    Key? key,
    required this.title,
    this.description,
    this.image,
    this.showFolderIcon = false,
    this.showMoreIcon = false,
    this.showHugeTitle = false,
    this.showRecommended = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: appSecondaryColor,
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.only(right: 10.0),
          width: image == null ? 300.0 : 320.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (showRecommended) const SizedBox(height: 10.0),
              if (showFolderIcon)
                Column(
                  children: const [
                    Icon(
                      Icons.folder,
                      color: Colors.grey,
                      size: 30.0,
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (image != null) const SizedBox(height: 10.0),
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
                    ],
                  ),
                  if (image != null)
                    SizedBox(
                      height: 80.0,
                      width: 80.0,
                      child: Image.network(
                        image!,
                        fit: BoxFit.cover,
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
        ),
        if (showRecommended)
          Positioned(
            left: 5.0,
            top: 5.0,
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: appGreen,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Text(
                'RECOMMENDED',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
      ],
    );
  }
}
