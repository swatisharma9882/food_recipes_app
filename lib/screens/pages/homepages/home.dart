import 'package:flutter/material.dart';
import 'package:food_recipes/screens/pages/homepages/list_view_one.dart';
import 'package:food_recipes/screens/pages/homepages/list_view_two.dart';
import 'package:food_recipes/screens/pages/homepages/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Find best recipes${'\n'}for cooking')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
              const SearchBar(),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Trending now 🔥',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [
                    Text('See all',
                        style:
                        TextStyle(fontSize: 14, color: Color(0xffE23E3E))),
                    SizedBox(width: 2),
                    Icon(
                      Icons.arrow_forward_rounded,
                      size: 14,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            const ListViewOneScreen(),
            const SizedBox(height: 15),
            const Text(
              'Popular category',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const ListViewTwoScreen(),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent recipe',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: const [
                    Text('See all',
                        style:
                        TextStyle(fontSize: 14, color: Color(0xffE23E3E))),
                    SizedBox(width: 2),
                    Icon(
                      Icons.arrow_forward_rounded,
                      size: 14,
                    ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
