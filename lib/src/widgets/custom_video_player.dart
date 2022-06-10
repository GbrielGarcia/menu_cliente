import 'package:frutasvideo/src/views/details_view.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer(
      {super.key,
      required this.pathVideo,
      required this.isSelected,
      required this.onTap,
      required this.label});

  final String pathVideo;
  final bool isSelected;
  final VoidCallback onTap;
  final String label;

  @override
  CustomVideoPlayerState createState() => CustomVideoPlayerState();
}

class CustomVideoPlayerState extends State<CustomVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.pathVideo);

    _controller.addListener(_listener);
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  void _listener() => setState(() {});

  @override
  void dispose() {
    _controller.dispose();
    _controller.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: PageView(children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            VideoPlayer(_controller, key: widget.key),
            // Align(
            //   alignment: const Alignment(-0.8, 0.85),
            //   child: PhysicalModel(
            //     color: const Color.fromARGB(255, 90, 85, 85),
            //     borderRadius: BorderRadius.circular(4),
            //     elevation: 2,
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Text(
            //         widget.label,
            //         style: const TextStyle(
            //           color: Colors.black,
            //           fontSize: 20,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Align(
              alignment: const Alignment(0.80, 0.83),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    if (_controller.value.isPlaying) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                  });
                },
                icon: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0.8, 0.60),
              child: IconButton(
                icon: Icon(
                  widget.isSelected
                      ? Icons.favorite
                      : Icons.favorite_border_outlined,
                  color: widget.isSelected ? Colors.red : Colors.white,
                  size: 45,
                ),
                onPressed: widget.onTap,
              ),
            )
          ],
        ),
        DetailsView(
          title: widget.label,
          // description: widget.label * 12,
        )
      ]),
    );
  }
}
