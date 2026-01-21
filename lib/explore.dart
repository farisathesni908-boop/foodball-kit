import 'package:flutter/material.dart';
import 'package:foodball_kit/searchscreen.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  TextEditingController _searchController = TextEditingController();

  final List<Map<String, dynamic>> _allItems = [
    {
      "images": "assets/articel1.png",
      "title": "Roumor Has It: Lampard’s position under threat, ...",
      "subtitle": "   04 JAN 2021, 14:16",
    },
    {
      "images": "assets/articel5.png",
      "title": "Artrta sees ‘natural leader’ Tierney as a future, ...",
      "subtitle": "04 JAN 2021, 05:30",
    },
    {
      "images": "assets/articel2.png",
      "title": "Athletic Bilbao to appoint Marcelino as coach until, ...",
      "subtitle": "04 JAN 2021, 09:23",
    },
    {
      "images": "assets/articel3.png",
      "title": "Barcelona suffer too much late in games, says Ter Stegen",
      "subtitle": "04 JAN 2021, 06:06",
    },
  ];

  // ----------- HORIZONTAL LIST DATA ------------
  final List<Map<String, dynamic>> _allItems2 = [
    {"id": "soccer", "images": "assets/soccer.png", "title": "Soccer"},
    {
      "id": "football",
      "images": "assets/images/basketball.png",
      "title": "baketball",
    },
    {"id": "basketball", "images": "assets/football.png", "title": "football"},
    {"id": "basketball2", "images": "assets/image 1.png", "title": "baseball"},
    {
      "id": "basketball3",
      "images": "assets/images/tennis.png",
      "title": "tennis",
    },
  ];

  String selected = "soccer";

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
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                
                    prefixIcon: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>Searchscreen()));
                      },
                      child: Icon(
                        Icons.search,
                        size: 20,
                        color: Color(0xff65656B),
                      ),
                    ),
                
                    hintText: 'Search for news, team, match, etc...',
                    hintStyle: TextStyle(
                      color: Color(0xff65656B),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 14,
                    ),
                
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ), // no border
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      // borderSide: BorderSide(color: Colors.orange, width: 1.2), // glowing border on tap
                    ),
                  ),
                  onChanged: _filterItems,
                ),
              ),
      
              SizedBox(height: 10),
      
              // -------------------- HORIZONTAL LIST --------------------
              SizedBox(
                height: 40,
      
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _allItems2.length,
                  itemBuilder: (context, index) {
                    final item = _allItems2[index];
                    final bool isSelected = selected == item["id"];
      
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
                                width: 130,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffED6B4E),
                                  borderRadius: BorderRadius.circular(26),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      item['images'],
                                      width: 40,
                                      height: 40,
                                    ),
                                    SizedBox(width: 4),
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
                            :
                              // ================= UNSELECTED VIEW =================
                              CircleAvatar(
                                radius: 23,
                                backgroundColor: Color(0xff222232),
                                child: Image.asset(
                                  item['images'],
                                  width: 24,
                                  height: 24,
                                ),
                              ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
      
              // -------------------- VERTICAL LIST --------------------
              SizedBox(
                height: 300,
                width: 400,
                child: ListView.builder(
                  itemCount: _filteredItems.length,
                  itemBuilder: (context, index) {
                    final item = _filteredItems[index];
                    return ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(23),
      
                        child: Image.asset(
                          item['images'],
                          width: 99,
                          height: 66.21,
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
                          color: Color(0xfffC4C4C4),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Image.asset(
                        'assets/images/Bookmark.png',
                        height: 20,
                        width: 16,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(left: 15,),
                child: Text(
                  'Trending News',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
      SizedBox(
        height: 22,
      ),
              SizedBox(
                height: 250,
      
                child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                crossAxisSpacing: 10
                
                ),
                children: [
                  Image.asset("assets/articel4.png",width: 241,height:169 ,fit: BoxFit.cover,),
                  Image.asset('assets/articel6.png',width: 241,height: 169,fit: BoxFit.cover,),
                ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
