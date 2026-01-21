import 'package:flutter/material.dart';
import 'package:foodball_kit/articledetail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final List<Map<String, dynamic>> score = [
  {"points1": 8, "status": "shooting", "points2": "12"},
  {"points1": 22, "status": "attacks", "points2": "29"},
  {"points1": 42, "status": "possesion", "points2": "58"},
  {"points1": 3, "status": "🟨 cards", "points2": "5"},
  {"points1": 8, "status": "corners", "points2": "7"},
];

// String se
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xff181829),
        appBar: AppBar(
          backgroundColor: Color(0xff181829),

          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Colors.white)),
          title: Center(
            child: Text(
              'UEFA Champions League',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 26,
              bottom: 1,
              right: 26,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 45, top: 31),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xff2B2B3D),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Image.asset(
                              'assets/images/arsenal.png',
                              height: 36,
                              width: 36,
                            ),
                          ),
                        ),
                        SizedBox(width: 47),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '2 - 3',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 41),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff2B2B3D),
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Image.asset(
                                'assets/images/astonvilla.png',
                                height: 36,
                                width: 36,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 43),
                    child: Row(
                      children: [
                        Text('Arsenal', style: TextStyle(color: Colors.white)),
                        SizedBox(width: 60),

                        Text('90.15', style: TextStyle(color: Colors.white)),
                        SizedBox(width: 41),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Aston Villa',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  TabBar(
                    labelColor: Color(0xffffffff),
                    unselectedLabelColor: Colors.white,

                    indicator: BoxDecoration(
                      color: Color(0xffF4A58A),
                      borderRadius: BorderRadius.circular(23),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,

                    tabs: const [
                      Tab(text: "Match Detail"),
                      Tab(text: "Line Up"),
                      Tab(text: "H2H"),
                    ],
                  ),

                  SizedBox(
                    height: 600,
                    width: 600,
                    child: TabBarView(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 300,
                              child: ListView.separated(
                               
                                padding: EdgeInsets.symmetric(horizontal: 40),
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: score.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            score[index]['points1'].toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            score[index]['status'].toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            score[index]['points2'].toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );

                                },
                                 separatorBuilder: (context, index) {
                                  return SizedBox(height: 16,);
                                },
                              ),
                            ),
                            Text(
                              'Other Match',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Container(
                                  height: 68,
                                  width: 318,
                                  decoration: BoxDecoration(
                                    color: Color(0xff2B2B3D),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      bottomLeft: Radius.circular(16),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 16,
                                        ),
                                        child: CircleAvatar(
                                          backgroundColor: Color(0xff222232),

                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              'assets/images/manchester.png',
                                            ),
                                          ),
                                        ),
                                      ),

                                      CircleAvatar(
                                        backgroundColor: Color(0xff222232),

                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            'assets/images/chelsea.png',
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 16,
                                              left: 14,
                                            ),
                                            child: Text(
                                              'Man United  vs Chelsea FC',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '2           -          3',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: Container(
                                    width: 40,
                                    height: 68,
                                    decoration: BoxDecoration(
                                      color: Color(0xff222232),
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(16),
                                        topRight: Radius.circular(16),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'FT',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),

                            Row(
                              children: [
                                Container(
                                  height: 68,
                                  width: 318,

                                  decoration: BoxDecoration(
                                    color: Color(0xff2B2B3D),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      bottomLeft: Radius.circular(16),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Color(0xff222232),

                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              'assets/images/idezia.png',
                                            ),
                                          ),
                                        ),

                                        CircleAvatar(
                                          backgroundColor: Color(0xff222232),

                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Image.asset(
                                              'assets/images/southampton.png',
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 16,
                                                left: 14,
                                              ),
                                              child: Text(
                                                'Totenham  vs  Southamton',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '1          -         0 ',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 68,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xff222232),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      bottomRight: Radius.circular(16),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'FT',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 24, left: 0),

                          child: DefaultTabController(
                            length: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Formation',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(width: 14),
                                    Text(
                                      '(4-2-3-1)',
                                      style: TextStyle(
                                        color: Color(0xffC4C4C4),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 18),
                                  child: SizedBox(
                                    height: 30,
                                    width: 220,
                                    child: TabBar(
                                      labelColor: Color(0xffffffff),
                                      unselectedLabelColor: Color(0xffffffff),
                                      indicator: BoxDecoration(
                                        color: Color(0xffED6B4E),
                                        borderRadius: BorderRadius.circular(32),
                                      ),
                                      indicatorSize: TabBarIndicatorSize.tab,
                                      dividerColor: Colors.transparent,
                                      tabs: const [
                                        Tab(text: "Arsenal"),
                                        Tab(text: "Aston Villa"),
                                      ],
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  height: 497,
                                  width: 500,
                                  child: TabBarView(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(
                                            height: 490,
                                            width: 400,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 5,
                                              ),
                                              child: Image.asset(
                                                'assets/images/Group 3228.png',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 200,
                                            ),
                                            child: Text(
                                              'no content',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Column(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
