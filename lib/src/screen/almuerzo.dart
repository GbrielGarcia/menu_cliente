import 'package:flutter/material.dart';
import 'package:frutasvideo/src/helpers/video_items.dart';
import 'package:video_player/video_player.dart';

class AlmuerzoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Almuerzo1.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Almuerzo2.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Almuerzo3.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Almuerzo4.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Almuerzo5.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Almuerzo6.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
        ],
      ),
    );
  }
}
