import 'package:flutter/material.dart';

import 'package:foodball_kit/screen2.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    final size = MediaQuery.of(context).size;
    bool Password = true;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      backgroundColor: Color(0xff181829),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 36,
              top: 64,
              bottom: 50,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //   width: MediaQuery.of(context).size.width*0.6 ,
                  // height: MediaQuery.of(context).size.height*0.4 ,
                  width: 338,
                  height: 291,
                  child: Image.asset('assets/images/Group 3090.png'),
                ),
                SizedBox(height: 78),
                Text(
                  'Dicover all about sport',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 14),
                Text(
                  'Search millions of jobs and get the inside scoop on companies.Wait for what? Let’s get start it!',
                  style: TextStyle(color: Color(0XFF65656B)),
                ),
                SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          enableDrag: true,
                          isScrollControlled: true,
                          builder: (context) {
                            return Container(
                              height: 563,
                              width: 420,
                              decoration: BoxDecoration(
                                color: Color(0xff222232),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  topRight: Radius.circular(16),
                                ),
                              ),

                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 24,
                                  top: 39,
                                  bottom: 50,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Welcome",
                                      style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(height: 32),

                                    Container(
                                      height: 64,
                                      width: 327,
                                      child: TextField(
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          prefixIcon: Icon(
                                            Icons.email_outlined,
                                            size: 24,
                                            color: Color(0xff65656B),
                                          ),
                                          hintText: "Email",
                                          hintStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffffffff),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xff181829),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              23,
                                            ),
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 24),
                                    Container(
                                      height: 64,
                                      width: 327,
                                      child: TextField(
                                        obscureText: Password,
                                        style: TextStyle(color: Colors.white),
                                        decoration: InputDecoration(
                                          prefixIcon: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 16,
                                              top: 20,
                                              bottom: 20,
                                              right: 3,
                                            ),
                                            child: Image.asset(
                                              'assets/Password.png',
                                              color: Color(0xff65656B),
                                            ),
                                          ),
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                Password =
                                                    !Password; // 👈 FIXED
                                              });
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                top: 20,
                                                bottom: 20,
                                              ),
                                              child: Image.asset(
                                                'assets/Hide.png',
                                                color: Color(0xff65656B),
                                              ),
                                            ),
                                          ),
                                          hintText: "Password",
                                          hintStyle: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffffffff),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xff181829),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              23,
                                            ),
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),

                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 20,
                                          ),
                                          child: Checkbox(
                                            value: isChecked,
                                            onChanged: (value) {
                                              setState(() {
                                                isChecked = value!;
                                              });
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          'Remember me',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff65656B),
                                          ),
                                        ),
                                        SizedBox(width: 40),
                                        Text(
                                          'Forgot Password',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 41),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => Screen2(),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          width: 327,
                                          height: 63,
                                          decoration: BoxDecoration(
                                            color: Color(0xff246BFD),
                                            borderRadius: BorderRadius.circular(
                                              16,
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Sign in',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xffFFFFFF),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 24, height: 24),
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 104,
                                        ),
                                        child: Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Don’t have account? ',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xffC4C4C4),
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Sign UP',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff246BFD),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        width: 199,
                        height: 63,
                        // 6
                        decoration: BoxDecoration(
                          color: Color(0xff246BFD),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: GestureDetector(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Color(0xffC4C4C4),
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 45),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0xffC4C4C4),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
