import 'package:flutter/material.dart';
import 'package:foodball_kit/screen3.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

String selected = "livescore";
final List<Map<String, dynamic>> _allItems = [
  {
    "image1": "assets/images/barcelona.png",
    "image2": "assets/images/realmadrid.png",
    "title": "Barcelona VS Real Madrid",
    "subtitle": "Monday, 12 Feb 2021 . 02.30 am",
  },
  {
    "image1": "assets/images/arsenal.png",
    "image2": "assets/astonvilla.png",
    "title": "Aersenal VS Aston Villa",
    "subtitle": "Tuesday, 9 Mar 2021 . 05.00 am",
  },
  {
    "image1": "assets/chelsea.png",
    "image2": "assets/liverpool.png",
    "title": "Chelsea VS Liverpool",
    "subtitle": "Satuday, 14 Mar 2021 . 01.00 am",
  },
  {
    "image1": "assets/Dortmund.png",
    "image2": "assets/BayernMünchen.png",
    "title": "Dortmund VS  München",
    "subtitle": "Wednesday, 8 Apr 2021 . 02.30 am",
  },
  {
    "image1": "assets/images/realmadrid.png",
    "image2": "assets/images/arsenal.png",
    "title": "Dortmund VS  München",
    "subtitle": "Wednesday, 8 Apr 2021 . 02.30 am",
  },
  {
    "image1": "assets/tottenham.png",
    "image2": "assets/watfoed.png",
    "title": "Tottenham VS Watford",
    "subtitle": "Friday, 21 Apr 2021 . 02.45 am",
  },
  {
    "image1": "assets/swanseaCity.png",
    "image2": "assets/fulham.png",
    "title": "Swansea City VS Fulham",
    "subtitle": "Sunday, 2 May 2021 . 04.45 am",
  },
  {
    "image1": "assets/Wolfsburg.png",
    "image2": "assets/liverpool.png",
    "title": "Wolfsburg VS Liverpool",
    "subtitle": "Wednesday, 15 May 2021 . 01.00 am",
  },
];
final List<Map<String, dynamic>> _allItems1 = [
  {"id": "1", "image": "assets/api.png", "title": "livescore"},
  {"id": "2", "image": "assets/newspapper.png", "title": "newspaper"},
  {"id": "3", "image": "assets/hastag.png", "title": "hashtag"},
  {"id": "4", "image": "assets/stadium.png", "title": "stadium"},
];

class _SearchscreenState extends State<Searchscreen> {
  TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _filteredItems = [];
  @override
  void initState() {
    super.initState();
    _filteredItems = _allItems;
  }

  void _filterItems(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredItems = _allItems;
      } else {
        _filteredItems = _allItems
            .where(
              (item) =>
                  item["title"].toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181829),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 28, right: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 256,
                      height: 54,
                      child: TextField(
                        controller: _searchController,
                        style: TextStyle(
                          color: Colors.white, // <-- text color inside field
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(
                            0xff222232,
                          ), // <-- background color inside the field

                          prefixIcon: Icon(
                            Icons.search,
                            size: 20,
                            color: Color(0xff65656B),
                          ),

                          hintText: 'Search your team ...',
                          hintStyle: TextStyle(
                            color: Color(0xff65656B),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),

                          // contentPadding: EdgeInsets.symmetric(
                          //   horizontal: 10,
                          //   vertical: 14,
                          // ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ), // no border
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onChanged: _filterItems,
                      ),
                    ),
                    SizedBox(width: 18),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text('cancel', style: TextStyle(color: Colors.white))),
                  ],
                ),
              ),

              SizedBox(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // <-- IMPORTANT
                  itemCount: _allItems1.length,
                  itemBuilder: (context, index) {
                    final item = _allItems1[index];
                    final bool isSelected = selected == item['id'];

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = item["id"];
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 16),

                        child: isSelected
                            ? Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffED6B4E),
                                  borderRadius: BorderRadius.circular(26),
                                ),
                                child: Row(
                                  mainAxisSize:
                                      MainAxisSize.min, // <-- FIT CONTENT
                                  children: [
                                    Image.asset(
                                      item['image'],
                                      width: 40,
                                      height: 40,
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      item['title'],
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : CircleAvatar(
                                radius: 23,
                                backgroundColor: Color(0xff222232),
                                child: Image.asset(
                                  item['image'],
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                      ),
                    );
                  },
                ),
              ),

              // vertical list//
              Expanded(
                child: ListView.builder(
                  itemCount: _filteredItems.length,
                  itemBuilder: (context, index) {
                    final item = _filteredItems[index];
                    return ListTile(
                      leading: SizedBox(
                        width: 80,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Color(0xff222232),
                              child: Image.asset(
                                item['image1'],
                                width: 22,
                                height: 22,
                              ),
                            ),

                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Color(0xff222232),
                              child: Image.asset(
                                item['image2'],
                                width: 22,
                                height: 22,
                              ),
                            ),
                          ],
                        ),
                      ),

                      title: Text(
                        item['title'],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffffffff),
                        ),
                      ),
                      subtitle: Text(
                        item['subtitle'],
                        style: TextStyle(
                          color: Color(0xfff65656B),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Icon(Icons.close, color: Color(0xff65656B)),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
