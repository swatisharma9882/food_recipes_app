import 'package:flutter/material.dart';

class ListViewOneScreen extends StatefulWidget {
  const ListViewOneScreen({super.key});

  @override
  State<ListViewOneScreen> createState() => _ListViewOneScreenState();
}

class _ListViewOneScreenState extends State<ListViewOneScreen> {
  List listViewData = [
    {'image': 'assets/images/video.png', 'rating': '4.5', 'duration': '15:10'},
    {'image': 'assets/images/video.png', 'rating': '4.5', 'duration': '15:10'},
    {'image': 'assets/images/video.png', 'rating': '4.5', 'duration': '15:10'},
    {'image': 'assets/images/video.png', 'rating': '4.5', 'duration': '15:10'},
    {'image': 'assets/images/video.png', 'rating': '4.5', 'duration': '15:10'},
    {'image': 'assets/images/video.png', 'rating': '4.5', 'duration': '15:10'}
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView.builder(
          itemCount: listViewData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (e, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width * 0.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                      child: Image.asset(
                        listViewData[index]['image'],
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(10),
                                height:
                                    MediaQuery.of(context).size.height * 0.04,
                                width: MediaQuery.of(context).size.width * 0.13,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey!.withOpacity(0.5),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Icon(Icons.star,
                                        color: Colors.white, size: 16),
                                    Text('4.5',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Image.asset(
                                  'assets/icons/bookmarkInactive.png',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.13,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey!.withOpacity(0.75),
                          ),
                          child: const Center(
                            child: Text(
                              '15:10',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.74,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('How to make sushi at home'),
                      Icon(Icons.more_horiz, color: Colors.black),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),
                      child: Image.asset(
                        'assets/images/profile.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text('By Niki Samantha'),
                  ],
                ),
              ],
            );
          }),
    );
  }
}
