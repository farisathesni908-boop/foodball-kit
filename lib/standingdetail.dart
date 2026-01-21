import 'package:flutter/material.dart';

class Standingdetail extends StatefulWidget {
  const Standingdetail({super.key});

  @override
  State<Standingdetail> createState() => _StandingdetailState();
}
final List< Map<String,dynamic>>data=[{
 "id":1,"image":"assets/Atletico.png","title":"Atlético Madrid","D":2,"L":1,"Ga":6,"Gd":23,"pts":38},
{
 "id":2, "image":"assets/realmadrid.png","title":"Real Madrid","D":4,"L":3,"Ga":7,"Gd":15,"pts":37
  
},
{
"id":3,"image":"assets/barcelona.png","title":"Barcelona","D":4,"L":4,"Ga":9,"Gd":20,"pts":34
},
{
"id":4,"image":"assets/villareal.png","title":"Villareal","D":8,"L":2,"Ga":10,"Gd":16,"pts":32
},
{
"id":5,"image":"assets/real socieded.png","title":"Real Sociedad","D":6,"L":5,"Ga":13,"Gd":13,"pts":30},
{
  "id":6,"image":"assets/sevilla.png","title":"Sevilla","D":3,"L":4,"Ga":15,"Gd":12,"pts":30
  
},
{
"id":7,"image":"assets/granada.png","title":"Granda","D":3,"L":7,"Ga":20,"Gd":11,"pts":24
},
{
"id":8,"image":"assets/celta.png","title":"Celta Vigo","D":5,"L":7,"Ga":25,"Gd":8,"pts":22
}



];
final List<int>indexes1=[0,1,2];
final List<int>indexes2=[3,4];
class _StandingdetailState extends State<Standingdetail> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color((0xff181829),),
          leading:        GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 106),
                    child: Row(
                      children: [
                            Center(child: Image.asset('assets/1.png',width: 59,height: 21)),
                    
                        Text(
                          'spain',style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16
                          ),
                         ),
                      ],
                    ),
                  ),
        ),
        backgroundColor: Color(0xff181829),
        body: SafeArea(child: Padding(
          padding: const EdgeInsets.only(top: 52,left: 28),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         
                  
             SizedBox(
              height: 28,
             ),
             Center(child: Image.asset('assets/liga.png',height: 112,width: 112,)),
             SizedBox(
              height: 18,
             ),
             Center(
               child: Text('La Liga',style: TextStyle(
                          color: Colors.white,fontWeight: FontWeight.w600,fontSize: 24
                        ),),
             ),
                      SizedBox(height: 32,),
                       TabBar(
                  labelColor: Color(0xffffffff),
                  unselectedLabelColor: Color(0xffffffff),
                  indicator: BoxDecoration(
                    color: Color(0xffED6B4E),
                    borderRadius: BorderRadius.circular(23),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(text: "All"),
                    Tab(text: "Home"),
                    Tab(text: "Away"),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
               
               Row(
                       children: [
                         Expanded(
                           flex: 4,

                           child: Row(
                             children: [
                            Image.asset('assets/#.png',color: Colors.white,height: 29,width: 7,),
               SizedBox(width: 12,),
                               Text('Team', style: TextStyle(color: Colors.white)),
                             ],
                           ),
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
        itemCount: data.length,
        separatorBuilder: ( context,index) {
           return  Padding(
             padding: const EdgeInsets.only(left: 150),
             child: Divider(
                   
                color: Colors.black
                    
                
                ),
           );
      
        },
      
        itemBuilder: (context, index) {
          final t = data[index];
           Color rowColor;
         if (indexes1.contains(index)) {
    rowColor = Color(0xff14274D);
  } else if (indexes2.contains(index)) {
    rowColor =Color(0xff441818);
  } else {
    rowColor = Colors.transparent;
  }
          return Container(
            color: rowColor,
           
            
            child: Row(
              children: [
                // TEAM NAME + IMAGE
                Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                Text(
          "${t["id"]}",   // ← ID from your data
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 10,
        ),
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
        )
        ),
      ),
    );
  }
}