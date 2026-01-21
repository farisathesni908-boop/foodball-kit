import 'package:flutter/material.dart';
import 'package:foodball_kit/home.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

final List<Map<String, dynamic>> sports = [
  {"id": "soccer", "name": "Soccer", "img": "assets/soccer.png"},
  {
    "id": "basketball",
    "name": "Basketball",
    "img": "assets/images/basketball.png",
  },
  {"id": "football", "name": "Football", "img": "assets/football.png"},
];
String selected = sports.first['id'];

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181829),
      body: Padding(
        padding: const EdgeInsets.only(top: 52, left: 28, right: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 25),
                  child: Text(
                    'LiveScore',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 24),
                  child: Icon(Icons.search, color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 28),
                  child: Icon(
                    Icons.notification_add_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            Stack(
              children: [
                Container(
                  width: 400,
                  height: 177,
                  decoration: BoxDecoration(
                    color: const Color(0xff246BFD),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 65, left: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Liverpool UEFA \nChampion League\nCelebration',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Yesterday, 06.30 PM',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  left: 25,
                  top: 41,
                  child: Image.asset(
                    'assets/Frame 4.png',
                    width: 60,
                    height: 20,
                  ),
                ),
                Positioned(
                  left: 150,
                  bottom: 1,
                  child: Image.asset(
                    'assets/images/image-removebg-preview 4.png',
                    height: 177,
                    width: 223,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
              width: 400,
              child: GridView.builder(
                itemCount: sports.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // mainAxisSpacing: 25,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  final item = sports[index];
                  final bool isSelected = selected.contains(item["id"]);

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                    selected=item["id"];
                    // print(item['id']);
                         
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 115,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),

                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? Color(0xffED6B4E)
                                  : Color(0xff222232),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                               right: 22,left: 22,top: 4
                           
                              ),
                              child: Column(
                                children: [
                                  Image.asset(item["img"]),
                                  SizedBox(height: 5),

                                  Text(
                                    item["name"],
                                    style: TextStyle(
                                      color: isSelected
                                          ? Colors.white
                                          : Colors.grey,
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Home()));
              },
              child: Row(
                children: [
                  Image.asset('assets/1.png',height: 24,width: 24,),
                  SizedBox(
                    width: 12,
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('La Liga',style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white  ,
                                      ),),
                                      Text('Spain',style: TextStyle(
                        fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xffAAAAAA)  ,
                                      ),),
                       SizedBox(
                        height: 14,
                       )             
                                    
                    ],
                  ),
                  Spacer(),
                    Icon(Icons.arrow_forward_ios,color: Colors.white,)
              
                ],
              ),
            ),
            Container(
              height: 68,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xff2B2B3D),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 36,width: 36,
                      decoration: BoxDecoration(
                        color:Color(0xff222232),
                     shape: BoxShape.circle
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/barcelona.png',height: 22,width: 22,),
                      )),
                      Row(
                        children: [
                          Container(
                          height: 36,width: 36,
                          decoration: BoxDecoration(
                            color:Color(0xff222232),
                                               shape: BoxShape.circle
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                                             child: Image.asset('assets/realmadrid.png',height: 22,width: 22,),
                          )),
                          
                        ],
                      ),
                      SizedBox(
                        width: 14,
                      ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Column(
                      children: [
                        Text('Barcelona  vs Real Madrid',style: TextStyle(
                          fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white
                        ),),
                        Text('2           -          3   ',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ), 
                  
                    Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: Container(
                              height: 68,
                              width: 47,
                              decoration: BoxDecoration(
                                color: Color(0xff222232),
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(16),topRight: Radius.circular(16))
                              ),
                              child:   Center(
                                child: Text('HT',style: TextStyle(
                                    fontSize: 14,fontWeight: FontWeight.w600,color:Colors.white ,
                                                  ),),
                              ),
                            ),
                    )


                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
              width: 30,
            ),
           Row(
             children: [
               Image.asset('assets/2.png',height: 24,width: 24,),
               SizedBox(
                width: 14,
               ),
               
               Column(crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Premier League',style: TextStyle(
                            fontSize: 16,fontWeight: FontWeight.w600,color:Colors.white ,
                                          ),),
                                          SizedBox(width: 10,),
        
                                          Text('England',style: TextStyle(
                            fontSize: 12,fontWeight: FontWeight.w400,color:Color(0xffAAAAAA),
                                          ),)
                 ],
               ),
                                                 Spacer(),
               Icon(Icons.arrow_forward_ios,color: Colors.white,),
             ],
           ),
           Container(
              height: 68,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xff2B2B3D),
                borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 36,width: 36,
                      decoration: BoxDecoration(
                        color:Color(0xff222232),
                     shape: BoxShape.circle
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/astonvilla.png',height: 22,width: 22,),
                      )),
                      Container(
                      height: 36,width: 36,
                      decoration: BoxDecoration(
                        color:Color(0xff222232),
                     shape: BoxShape.circle
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                   child: Image.asset('assets/idezia.png',height: 22,width: 22,),
                      )),
                      SizedBox(
                        width: 14,
                      ),
                 Padding(
                   padding: const EdgeInsets.only(top: 16),
                   child: Column(
                     children: [
                       Text('Aston Villa  vs  Liverpool',style: TextStyle(
                        fontSize: 14,fontWeight: FontWeight.w600,color: Colors.white
                       )),
                       Text('2             -         3',style: TextStyle(
                        color: Colors.white
                       ),)
                     ],
                   ),
                 ),
           
                   
            Padding(
              padding: const EdgeInsets.only(left: 29),
              child: Container(
                height: 68,
                width: 47,
                decoration: BoxDecoration(
                  color: Color(0xff222232),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16)),
                         
                         
                ),
               child:   Center(
                 child: Text('FT',style: TextStyle(
                     fontSize: 14,fontWeight: FontWeight.w600,color:Colors.white ,
                                   ),),
               ),
                         
              ),
            ),
           
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
