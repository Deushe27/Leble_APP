import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:leble_test_1/view/question_screen.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayerPlaylist(
              betterPlayerConfiguration: BetterPlayerConfiguration(),
              betterPlayerPlaylistConfiguration:
                  BetterPlayerPlaylistConfiguration(),
              betterPlayerDataSourceList: createDataSet(),
            ),
          ),
          SizedBox(height: 16),
          Column(
            children: [
              SizedBox(
                width: 325,
                child: Text(
                  'What are the names of cities in Indonesia?',
                  style: TextStyle(
                    color: Color(0xFF60008E),
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                  ),
                ),
              ),
              SizedBox(
                width: 324,
                child: Text(
                  'Indonesia, an archipelagic country in Southeast Asia, consists of 38 provinces and over 500 cities. From Aceh in the west to Papua in the east, each province offers unique characteristics.\n',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 10,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 1.3,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 323,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizzScreen(),
                    ));
              }, // Add the necessary function for the button
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF60008E), // Change the color as needed
                onPrimary: Colors.white,
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: const Text('Quiz'),
            ),
          ),
        ],
      ),
    );
  }

  List<BetterPlayerDataSource> createDataSet() {
    List<BetterPlayerDataSource> dataSourceList = <BetterPlayerDataSource>[];
    dataSourceList.add(
      BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
      ),
    );
    dataSourceList.add(
      BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
      ),
    );
    dataSourceList.add(
      BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        "http://sample.vodobox.com/skate_phantom_flex_4k/skate_phantom_flex_4k.m3u8",
      ),
    );
    return dataSourceList;
  }
}

class VideoScreen extends StatelessWidget {
  final String videoLink;

  const VideoScreen({Key? key, required this.videoLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: BetterPlayer.network(
        videoLink,
        betterPlayerConfiguration: BetterPlayerConfiguration(
          aspectRatio: 16 / 9,
        ),
      ),
    );
  }
}
