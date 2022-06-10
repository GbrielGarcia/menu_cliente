import 'package:frutasvideo/src/widgets/videos_scrollables.dart';
import 'package:flutter/material.dart';

const cenaVideos = [
  'assets/Merienda1.mp4',
  'assets/Merienda2.mp4',
  'assets/Merienda3.mp4',
  'assets/Merienda4.mp4',
  'assets/Merienda5.mp4',
  'assets/Merienda6.mp4',
];
const todoFoto = [
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
  'assets/img/1.jpg',
];
class MeriendaView extends StatelessWidget {
  const MeriendaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VideosScrollable(pathsVideo: cenaVideos, pathsFoto: todoFoto, );
  }
}
