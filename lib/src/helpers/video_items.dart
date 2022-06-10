import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoItems extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool? looping;
  final bool? autoplay;

  VideoItems({
    required this.videoPlayerController,
    this.looping,
    this.autoplay,
    Key? key,
  }) : super(key: key);

  @override
  _VideoItemsState createState() => _VideoItemsState();
}

class _VideoItemsState extends State<VideoItems> {
  late ChewieController _chewieController;
  bool iconl = false;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 5 / 8,
      autoInitialize: true,
      autoPlay: widget.autoplay!,
      looping: widget.looping!,
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Chewie(
            controller: _chewieController,
          ),
        ),
        Positioned(
          right: 50,
          top: 500,
          child: IconButton(
            onPressed: () {
              setState(() {
                iconl = !iconl;
              });
            },
            icon: iconl
                ? const Icon(
                    Icons.favorite,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController.dispose();
  }
}
