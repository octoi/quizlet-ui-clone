import 'package:app/utils/constants.dart';
import 'package:app/widgets/item_card.dart';
import 'package:app/widgets/scroll_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appPrimaryColor,
      appBar: AppBar(
        backgroundColor: appSecondaryColor,
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: appSecondaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            ScrollList(
              length: 5,
              title: 'Sets',
              card: ItemCard(
                title: 'rick deseases',
                description: '18 terms',
              ),
            ),
            SizedBox(height: 30.0),
            ScrollList(
              length: 2,
              title: 'Folders',
              card: ItemCard(
                title: 'Rick Chapter 2',
                showFolderIcon: true,
                showHugeTitle: true,
              ),
            ),
            SizedBox(height: 30.0),
            ScrollList(
              length: 10,
              title: 'Set similar to rick_astley',
              card: ItemCard(
                title: 'Rickanaissance',
                image: rickImage,
                description: '18 terms',
                showHugeTitle: true,
                showMoreIcon: true,
                showRecommended: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
