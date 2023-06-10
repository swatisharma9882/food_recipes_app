import 'package:flutter/material.dart';

class ListViewThreeScreen extends StatefulWidget {
  const ListViewThreeScreen({super.key});

  @override
  State<ListViewThreeScreen> createState() => _ListViewThreeScreenState();
}

class _ListViewThreeScreenState extends State<ListViewThreeScreen> {
  final List _listViewData = [
    {
      'image': 'assets/images/recent1.png',
      'title': 'Indonesian chicken burger',
      'byName': 'Adrianna Curl'
    },
    {
      'image': 'assets/images/recent2.png',
      'title': 'Home made cute pancake',
      'byName': 'James Wolden'
    },
    {
      'image': 'assets/images/recent1.png',
      'title': 'Indonesian chicken burger',
      'byName': 'Adrianna Curl'
    },
    {
      'image': 'assets/images/recent2.png',
      'title': 'Home made cute pancake',
      'byName': 'James Wolden'
    },
    {
      'image': 'assets/images/recent1.png',
      'title': 'Indonesian chicken burger',
      'byName': 'Adrianna Curl'
    },
    {
      'image': 'assets/images/recent2.png',
      'title': 'Home made cute pancake',
      'byName': 'James Wolden'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
        itemCount: _listViewData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (e, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                height: 120,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  image: DecorationImage(
                    image: AssetImage(
                      _listViewData[index]['image'],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.33,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    _listViewData[index]['title'],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.33,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "By ${_listViewData[index]['byName']}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
