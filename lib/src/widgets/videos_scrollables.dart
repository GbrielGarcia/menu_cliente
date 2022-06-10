import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:frutasvideo/src/widgets/custom_video_player.dart';
import 'package:frutasvideo/src/providers/favourites_provider.dart';

class VideosScrollable extends StatelessWidget {
  const VideosScrollable({Key? key, required this.pathsVideo, required this.pathsFoto}) : super(key: key);

  final List<String> pathsVideo;
  final List<String> pathsFoto;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.805,
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: pathsVideo.length,
          itemBuilder: (_, i) {
            final path = pathsVideo[i];
            return CustomVideoPlayer(
                pathVideo: path,
                isSelected: context.watch<FavouritesProvider>().isSelected(path),
                onTap: () => context.read<FavouritesProvider>().addOrRemoveRecipe(path),
                label: pathsFoto[i]);
          },
        ),
      ),
    );
  }
}
