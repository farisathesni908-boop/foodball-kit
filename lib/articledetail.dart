import 'package:flutter/material.dart';

class Articledetail extends StatefulWidget {
  const Articledetail({super.key});

  @override
  State<Articledetail> createState() => _ArticledetailState();
}

class _ArticledetailState extends State<Articledetail> {
  bool _isImageVisible = false; // Initial s

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181829),
      
       bottomNavigationBar: _isImageVisible?SizedBox():Padding(
        padding: const EdgeInsets.only(bottom: 40,left: 100,right: 100),
        child: GestureDetector(
          onTap: () {
      
                setState(() {
                  _isImageVisible = !_isImageVisible; // Toggle the boolean
                });
              
          },
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(40)

            ),
          
            child: Center(child: Text(_isImageVisible ? 'Hide Image' : 'Read More')),
          ),
        )
             
              
            
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 28,right:28 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(23),
                  bottomRight: Radius.circular(23),
                ),
          
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/articel4.png',
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: 28,
                      top: 52,
                      child: Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
          
                    Positioned(
                      left: 350,
                      top: 52,
                      right: 28,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Color(0xffffffff).withOpacity(0.2),
          
                        child: Icon(Icons.share_outlined, color: Colors.white),
                      ),
                    ),
          
                    Positioned(
                      left: 350,
                      top: 120,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffED6B4E),
                        child: Image.asset(
                          'assets/Bookmark.png',
                          color: Colors.white,
                          height: 16,
                          width: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Arsenal vs Aston Villa \nprediction',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 34),
              Row(
                children: [
                  Image.asset('assets/Mask Group (2).png', height: 37, width: 37),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Brian Imanuel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'May 15, 2020 ',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffC4C4C4),
                        ),
                      ),
                    ],
                  ),
                        
                  SizedBox(width: 60),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/Heart.png',
                        height: 18,
                        width: 18,
                        color: Colors.white,
                      ),
                      
                    ],
                  ),
                  SizedBox(
                    width: 8,),
                  
                  Text('1403', style: TextStyle(color: Colors.white)),
                  SizedBox(width: 16.5),
                  Image.asset(
                    'assets/Chat.png',
                    height: 18,
                    width: 18,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),

                  Text('976', style: TextStyle(color: Colors.white)),
                ],
              ),
          
              RichText(
                text: TextSpan(
                  children: [
                    // BIG FIRST LETTER
                    TextSpan(
                      text: "A",
                      style: TextStyle(
                        fontSize: 60, // large drop cap
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        height: 1.0,
                      ),
                    ),
          
                    // NORMAL UNDERLINED TEXT
                    TextSpan(
                      text:
                          "rsenal will have to grind it out against\n Aston Villa if they are to register\n",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
          
                    TextSpan(
                      text:
                          "League wins. The match is scheduled for\n sunday at the Emirates.",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text:
                          "League wins. The match is scheduled for Sunday at the Emirates.The Gunners put forth a real statement of intent after their 1-0 win against Manchester United. League wins. The match is scheduled for Sunday at the Emirates.The Gunners put forth a real statement of intent after their 1-0 win against Manchester United.   ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        height: 1.5
                      ),
                    ),
                  ],
                ),
              ),
              
              // const SizedBox(height: 20),
              // The Visibility widget controlling the image
              Visibility(
                visible:
                    _isImageVisible, // Controls visibility based on _isImageVisible
                child: Text("League wins. The match is scheduled for Sunday at the Emirates.The Gunners put forth a real statement of intent after their 1-0 win against Manchester United. Mikel Arteta's side had already surrendered points to Liverpool, Manchester City and ",style: TextStyle(
                  color: Colors.white
                ),)
                  // Replace with your image URL
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
