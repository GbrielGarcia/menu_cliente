import 'package:flutter/material.dart';
import 'package:frutasvideo/src/helpers/video_items.dart';
import 'package:video_player/video_player.dart';

class DesayunoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Desayuno1.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Desayuno2.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Desayuno3.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Desayuno4.mp4',
            ),
            autoplay: false,
            looping: true,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Desayuno5.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
          VideoItems(
            videoPlayerController: VideoPlayerController.asset(
              'assets/Desayuno6.mp4',
            ),
            looping: true,
            autoplay: false,
          ),
        ],
      ),
    );
  }
}
