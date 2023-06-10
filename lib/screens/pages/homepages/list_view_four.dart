import 'package:flutter/material.dart';

class ListViewFourScreen extends StatefulWidget {
  const ListViewFourScreen({super.key});

  @override
  State<ListViewFourScreen> createState() => _ListViewFourScreenState();
}

class _ListViewFourScreenState extends State<ListViewFourScreen> {
  final List _listViewData = [
    {
      'image': 'assets/images/profile1.png',
      'name': 'Troyan Smith',
    },
    {
      'image': 'assets/images/profile2.png',
      'name': 'James Wolden',
    },
    {
      'image': 'assets/images/profile3.png',
      'name': 'Niki Samantha',
    },
    {
      'image': 'assets/images/profile4.png',
      'name': 'Roberta Anny',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.23,
      child: ListView.builder(
        itemCount: _listViewData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (e, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                // color: Colors.black,
                margin: const EdgeInsets.only(right: 15),
                child: CircleAvatar(
                  backgroundImage: AssetImage(_listViewData[index]['image']),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.26,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, right: 10),
                  child: Text(
                    _listViewData[index]['name'],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
