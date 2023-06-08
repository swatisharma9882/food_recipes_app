import 'package:flutter/material.dart';

class scr extends StatefulWidget {
  const scr({Key? key}) : super(key: key);

  @override
  State<scr> createState() => _scrState();
}

class _scrState extends State<scr> {
  final List<String> _heading = [
    'Salad',
    'Breakfast',
    'Appetizer',
    'Noodle',
    'Lunch',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Find best recipes${'\n'}for cooking')),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.065,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xffD9D9D9)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search recipes',
                  hintStyle: const TextStyle(color: Color(0xffC1C1C1)),
                  prefixIcon: IconButton(
                    icon: const Icon(
                      Icons.search_rounded,
                      color: Color(0xffC1C1C1),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (e, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                width: MediaQuery.of(context).size.width * 0.75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/video.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: SizedBox(
                                  width: 250,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.13,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.grey[400],
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: const [
                                                Icon(Icons.star,
                                                    color: Colors.white,
                                                    size: 16),
                                                Text('4.5',
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.white,
                                            ),
                                            child: Image.asset(
                                              'assets/icons/bookmarkInactive.png',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.13,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.grey[400],
                                        ),
                                        child: const Center(
                                          child: Text(
                                            '15:10',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('How to make sushi at home'),
                              Icon(Icons.more_horiz),
                            ],
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
                      ),
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Popular category',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _heading.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (e, index) {
                  return Container(
                    padding: const EdgeInsets.only(top: 15, right: 25),
                    child: Text(_heading[index]),
                  );
                },
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (e, index) {
                      return Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 20),
                            width:MediaQuery.of(context).size.width*0.3,
                            height:MediaQuery.of(context).size.height*0.4,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20),
                            ),

                          ),
                          const Align(alignment: Alignment.topRight,
                          child: CircleAvatar(
                            backgroundColor:Colors.white,
                            radius: 12.0,
                            backgroundImage: AssetImage('assets/images/food.png'),
                          )
                            ),
                        ],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
