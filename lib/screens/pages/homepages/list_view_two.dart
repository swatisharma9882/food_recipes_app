import 'package:flutter/material.dart';

class ListViewTwoScreen extends StatefulWidget {
  const ListViewTwoScreen({super.key});

  @override
  State<ListViewTwoScreen> createState() => _ListViewTwoScreenState();
}

class _ListViewTwoScreenState extends State<ListViewTwoScreen> {
  final List _listViewRow = [
    "Salad",
    "Breakfast",
    "Appetizer",
    "Noodle",
    "Lunch",
    "Dinner"
  ];
   List listViewData = [
    {'image': 'assets/images/food.png', 'title': 'Cheddar cheese and shell salad', 'duration': '10 Mins'},
    {'image': 'assets/images/food.jpg', 'title': 'Pepper sweetcorn ramen', 'duration': '20 Mins'},
    {'image': 'assets/images/food2.png', 'title': 'Cheddar cheese and shell salad', 'duration': '10 Mins'},
    {'image': 'assets/images/food3.png', 'title': 'Pepper sweetcorn ramen', 'duration': '20 Mins'},
    {'image': 'assets/images/food4.png', 'title': 'Cheddar cheese and shell salad', 'duration': '10 Mins'},
    {'image': 'assets/images/food.jpg', 'title': 'Pepper sweetcorn ramen', 'duration': '20 Mins'}
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      // color: Colors.grey,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.06,
            // color: Colors.green,
            child: ListView.builder(
                itemCount: _listViewRow.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (e, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(_listViewRow[index],
                        style: const TextStyle(
                          color: Colors.red,
                        )),
                  );
                }),
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            // color: Colors.blue,
            child: ListView.builder(
                itemCount: listViewData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (e, index) {
                  return Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20, top: 30),
                        width: MediaQuery.of(context).size.width * 0.33,
                        height: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                          color: const Color(0xffF1F1F1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        height: 70,
                        width: MediaQuery.of(context).size.width * 0.33,
                        child:  Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: 70,
                            width: 70,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(listViewData[index]['image']),
                              maxRadius: 15,
                              minRadius: 15,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.33,

                        // color:Colors.red,
                        child:  Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 25, left: 3, right: 3),
                            child: Text(
                              listViewData[index]['title'],
                              style: const TextStyle(color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.33,
                        child:  Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                               Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(listViewData[index]['duration'],style: const TextStyle(color:Colors.black,fontSize: 10),),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Image.asset(
                                  'assets/icons/bookmarkInactive.png',

                                ),
                              ),
                            ],
                          )
                        ),
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
