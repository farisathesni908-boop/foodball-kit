
import 'package:flutter/material.dart';
import 'package:foodball_kit/navebar.dart';
import 'package:foodball_kit/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final List<Map<String, dynamic>> sports = [
    {"id": "soccer", "name": "Soccer", "img": "assets/soccer.png"},
    {"id": "basketball", "name": "Basketball", "img": "assets/images/basketball.png"},
    {"id": "football", "name": "Football", "img": "assets/football.png"},
    {"id": "baseball", "name": "Baseball", "img": "assets/baseball.png"},
    {"id": "tennis", "name": "Tennis", "img": "assets/images/tennis.png"},
    {"id": "hockey", "name": "Hockey", "img": "assets/image 1.png"},
  ];

  // FIXED ✔
  List<String> selected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Padding(
        padding: const EdgeInsets.only(top: 90, left: 28, right: 28,bottom: 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What sport do you interest?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 14),

            const Text(
              'You can choose more than one',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff65656B),
              ),
            ),

            const SizedBox(height: 40),

            // ⭐ FIXED GRIDVIEW ⭐
            SizedBox(
          height: 250,
              child: GridView.builder(
                shrinkWrap: true,
                physics:NeverScrollableScrollPhysics(),
                itemCount: sports.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  final item = sports[index];
                  final bool isSelected = selected.contains(item["id"]);

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected
                            ? selected.remove(item["id"])
                            : selected.add(item["id"]);
                      });
                    },
                   child: Column(
  children: [
    Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffED6B4E) : Color(0xff2B2B3D),
       
        shape: BoxShape.circle
      ),
      child: Center(
        child: Image.asset(
          item["img"],
          height: 40,
          width: 40,
        ),
      ),
    ),

    const SizedBox(height: 10),

    Text(
      item["name"],
      style: TextStyle(
        color: isSelected ? Colors.white : Colors.grey,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  ],
)
                  );
                }
            )
            ),
         Padding(
           padding: const EdgeInsets.only(top: 94,bottom: 26),
           child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>Navebar()));
            },
             child: Container(
              height: 93,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xff246BFD),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Center(child: Text('Continue',style: TextStyle(
                fontSize: 18,fontWeight: FontWeight.w600,color: Colors.white
              ),)),
             ),
           ),
         ),
         Center(
           child: Text('skip',style: TextStyle(
            fontSize: 18,fontWeight: FontWeight.w400,color: Colors.white
           ),),
         )
          ]
        )
      )
    );
  
  }
}