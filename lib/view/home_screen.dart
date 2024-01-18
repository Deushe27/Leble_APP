import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 390,
          height: 844,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Color(0xFFEFEFEF)),
          child: Stack(
            children: [
              const Positioned(
                left: 34,
                top: 127,
                child: Text(
                  'Good Morning, Rafika!',
                  style: TextStyle(
                    color: Color(0xFF60008E),
                    fontSize: 24,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 0.03,
                    letterSpacing: -0.05,
                  ),
                ),
              ),
              const Positioned(
                left: 34,
                top: 154,
                child: Text(
                  'What do you want to learn today?',
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0.10,
                    letterSpacing: -0.05,
                  ),
                ),
              ),
              Positioned(
                left: 33,
                top: 189,
                child: Container(
                  width: 323,
                  height: 37,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 41,
                        top: 10,
                        child: Text(
                          'Search',
                          style: TextStyle(
                            color: Color(0xFFA1A1A1),
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 287,
                        top: 8,
                        child: Container(
                          width: 21,
                          height: 21,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(),
                          // Removed empty Stack widget
                        ),
                      ),
                      const Positioned(
                        left: 13,
                        top: 6,
                        child: SizedBox(
                          width: 24,
                          height: 24,
                          // Removed empty Stack widget
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 34,
                top: 239,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 3),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF60008E),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'General Knowledge',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 3),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(width: 1, color: Color(0xFF60008E)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Math',
                            style: TextStyle(
                              color: Color(0xFF60008E),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 3),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(width: 1, color: Color(0xFF60008E)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Social Sciences',
                            style: TextStyle(
                              color: Color(0xFF60008E),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 20,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 3),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side:
                              const BorderSide(width: 1, color: Color(0xFF60008E)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Social Sciences',
                            style: TextStyle(
                              color: Color(0xFF60008E),
                              fontSize: 12,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 34,
                top: 275,
                child: Container(
                  width: 323,
                  height: 112,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFF745187)),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 15,
                        top: 14,
                        child: Container(
                          width: 100,
                          height: 84,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF60008E),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 125,
                        top: 17,
                        child: SizedBox(
                          width: 187,
                          child: Text(
                            'what are the names of cities in Indonesia?',
                            style: TextStyle(
                              color: Color(0xFF60008E),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 125,
                        top: 56,
                        child: SizedBox(
                          width: 185,
                          child: Text(
                            'Indonesia, an archipelagic country in Southeast Asia, consists of 38 provinces and over 500 cities.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 10,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
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
      ],
    );
  }
}
