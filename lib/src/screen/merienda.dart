import 'package:flutter/material.dart';
import 'package:frutasvideo/src/helpers/video_items.dart';
import 'package:video_player/video_player.dart';

class Meriendacreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Merienda1.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Merienda2.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Merienda3.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Merienda4.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Merienda5.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Merienda6.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
        ],
      ),
    );
  }
}
