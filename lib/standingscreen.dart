
import 'package:flutter/material.dart';
import 'package:foodball_kit/standingdetail.dart';

class Standingscreen extends StatefulWidget {
  @override
  _standingState createState() => _standingState();
}

class _standingState extends State<Standingscreen> {
  TextEditingController _searchController = TextEditingController();
  final List<Map<String,dynamic>>team=[
    {
"image":"assets/Atletico.png","title":"Atlético Madrid","D":2,"L":1,"Ga":6,"Gd":23,"pts":38},
{
  "image":"assets/realmadrid.png","title":"Real Madrid","D":4,"L":3,"Ga":7,"Gd":15,"pts":37
  
},
{
"image":"assets/barcelona.png","title":"Barcelona","D":4,"L":4,"Ga":9,"Gd":20,"pts":34
},
{
"image":"assets/villareal.png","title":"Villareal","D":8,"L":2,"Ga":10,"Gd":16,"pts":32
}


  ];
   final List<Map<String,dynamic>>teamA=[
    {
"image":"assets/liverpool.png","title":"Liverpool","D":6,"L":2,"Ga":21,"Gd":16,"pts":33},
{
  "image":"assets/manchester.png","title":"Man United","D":3,"L":3,"Ga":24,"Gd":9,"pts":33
  
},
{
"image":"assets/leicester.png","title":"Leicester City","D":2,"L":5,"Ga":21,"Gd":10,"pts":32
},


  ];


  final List<Map<String, dynamic>> _allItems = [
    {
      "images": "assets/articel1.png",
      "title": "Roumor Has It: Lampard’s position under threat, ...",
      "subtitle": "04 JAN 2021, 14:16",
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
          padding: const EdgeInsets.only(left: 28,right: 29),
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
      
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                      color: Color(0xff65656B),
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
              SizedBox(height: 34),
              Row(
                children: [
                  Image.asset('assets/1.png', height: 24, width: 24),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'La Liga',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Spain',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xffAAAAAA),
                            ),
                          ),
                          SizedBox(width: 250),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 16,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                 
                ],
              ),
               SizedBox(
                      height: 17,
                    ),
                   
             
              Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xff222232),
          borderRadius: BorderRadius.circular(19),
        ),
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      // ---------------- HEADER ROW ----------------
      Row(
        children: [
          Expanded(
            flex: 4,
            child: Text('Team', style: TextStyle(color: Colors.white)),
          ),
          Expanded(child: Text('D', style: TextStyle(color: Colors.white))),
          Expanded(child: Text('L', style: TextStyle(color: Colors.white))),
          Expanded(child: Text('Ga', style: TextStyle(color: Colors.white))),
          Expanded(child: Text('Gd', style: TextStyle(color: Colors.white))),
          Expanded(child: Text('Pts', style: TextStyle(color: Colors.white))),
         
        ],
        
      ),
       Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Divider(
              color: Colors.black
              
            ),
          ),
      
      SizedBox(height: 10),
      
      // ---------------- LIST OF ITEMS ----------------
      ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: team.length,
        separatorBuilder: ( context,index) {
           return  Padding(
             padding: const EdgeInsets.only(left: 150),
             child: Divider(
                   
                color: Colors.black
                    
                
                ),
           );
      
        },
      
        itemBuilder: (context, index) {
          final t = team[index];
          return Container(
            
            child: Row(
              children: [
                // TEAM NAME + IMAGE
                Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      
                      Image.asset(t["image"], width: 24, height: 24),
                      SizedBox(width: 8),
                      Text(t["title"],
                          style: TextStyle(color: Colors.white, fontSize: 13)),
                    ],
                  ),
                ),
                  
                Expanded(
                  child: Text("${t["D"]}",
                      style: TextStyle(color: Colors.white)),
                ),
                Expanded(
                  child: Text("${t["L"]}",
                      style: TextStyle(color: Colors.white)),
                ),
                Expanded(
                  child: Text("${t["Ga"]}",
                      style: TextStyle(color: Colors.white)),
                ),
                Expanded(
                  child: Text("${t["Gd"]}",
                      style: TextStyle(color: Colors.white)),
                ),
                Expanded(
                  child: Text("${t["pts"]}", // example points
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          );
        },
      ),
      
      
          ],
        ),
      ),
     
      
                  SizedBox(height: 20),
      
     
      Row(
        children: [
          Image.asset('assets/2.png', height: 24, width: 24),
          SizedBox(width: 12),
      
          Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
onTap: () {
  Navigator.push(context, MaterialPageRoute(builder: (_)=>Standingdetail()));
},
            child: Row(
              children: [
                Text(
                  'Premier League',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: 158,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Standingdetail()));
                  },
                  child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16)),
              ],
            ),
          ),
          Text(
            'England',
            style: TextStyle(color: Color(0xffAAAAAA), fontSize: 12),
          ),
        ],
      ),
          ),
        ],
      ),
      
      SizedBox(height: 16),
      
   
     Container(
  width: double.infinity,
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Color(0xff222232),
    borderRadius: BorderRadius.circular(19),
  ),
  child: Column(
    children: [
      // HEADER ROW
      Row(
        children: [
          Expanded(flex: 4, child: Text("Team", style: TextStyle(color: Colors.white))),
          Expanded(child: Text("D", style: TextStyle(color: Colors.white))),
          Expanded(child: Text("L", style: TextStyle(color: Colors.white))),
          Expanded(child: Text("Ga", style: TextStyle(color: Colors.white))),
          Expanded(child: Text("Gd", style: TextStyle(color: Colors.white))),
          Expanded(child: Text("Pts", style: TextStyle(color: Colors.white))),
        ],
      ),
Padding(
  padding: const EdgeInsets.only(left: 150),
  child: Divider(
    color: Colors.black,
  ),
),

      SizedBox(height: 12),

      // FIXED HEIGHT LIST
      SizedBox(
        height: 130, // <<< FIX, IMPORTANT!
        child: ListView.separated(
          itemCount: teamA.length,
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(left: 150),
            child: Divider(color: Colors.black),
          ),

          itemBuilder: (context, index) {

            final t = teamA[index];
            return Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      Image.asset(t["image"], width: 22, height: 22),
                      SizedBox(width: 8),
                      Text(t["title"], style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Expanded(child: Text("${t['D']}", style: TextStyle(color: Colors.white))),
                Expanded(child: Text("${t['L']}", style: TextStyle(color: Colors.white))),
                Expanded(child: Text("${t['Ga']}", style: TextStyle(color: Colors.white))),
                Expanded(child: Text("${t['Gd']}", style: TextStyle(color: Colors.white))),
                Expanded(child: Text("23", style: TextStyle(color: Colors.white))),
              ],
            );
          },
        ),
      ),
    ],
  ),
 )
            ]
      
        
          
          )
        )
      )
    );
  }
}