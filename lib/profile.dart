import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

final List<Map<String, dynamic>> items = [
  {"image": "assets/Profile.png", "title": "Name", "subtitle": "Brian Imanuel"},
  {"image": "assets/Message.png","title":"Email","subtitle":"brians213@gmail.com"},

  {"image": "assets/Call.png","title":"phone","subtitle":"+62 821 560 641"},
  {"image": "assets/Location.png","title":"Address","subtitle":"Long beach, California"},
];

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xff181829),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 41, left: 28, right: 28),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Center(
                    child: Image.asset(
                      'assets/Mask Group (2).png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'Brian Imanuel',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '#YNWK till the end 🔥',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffC4C4C4),
                  ),
                ),
                SizedBox(height: 50),
                TabBar(
                  labelColor: Color(0xffffffff),
                  unselectedLabelColor: Color(0xffffffff),
                  indicator: BoxDecoration(
                    color: Color(0xffED6B4E),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(text: "My Profile"),
                    Tab(text: "Activity"),
                    Tab(text: "Settings"),
                  ],
                ),
          SizedBox(height: 32,),
                SizedBox(
                  height: 400,
                  width: 600,
                  child: TabBarView(
                    children:[
                      Column(
                        children: [
                         Expanded(
                           child: ListView.builder(
                            itemCount: items.length,
                            itemBuilder: (context, index){
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color(0xff222232),

                                child: Image.asset(items[index]['image'],height: 16,width: 16,color: Colors.white,)),
                                title: Text(items[index]['title'],style: TextStyle(
                                  color: Color(0xffffffff)
                                ),),
                                subtitle: Text(items[index]['subtitle'].toString(),style: TextStyle(
                                  color: Color(0xffC4C4C4)
                                ),),
                                trailing: Image.asset('assets/Arrow - Right 2.png',height: 18,width: 18,color: Colors.white,
                                ),

                            );
                           
                           }),
                         )
                        ],
                      )
                    ]
             
                  ),
                ),
                

             
              ],
              
            ),
          ),
          
          
        ),
      ),
    );
  }
}
