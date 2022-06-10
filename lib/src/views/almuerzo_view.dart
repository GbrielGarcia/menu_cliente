import 'package:frutasvideo/src/widgets/videos_scrollables.dart';
import 'package:flutter/material.dart';

const almuerzoVideos = [
  'assets/Almuerzo1.mp4',
  'assets/Almuerzo2.mp4',
  'assets/Almuerzo3.mp4',
  'assets/Almuerzo4.mp4',
  'assets/Almuerzo5.mp4',
  'assets/Almuerzo6.mp4',
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
class AlmuerzoView extends StatelessWidget {
  const AlmuerzoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VideosScrollable(pathsVideo: almuerzoVideos, pathsFoto: todoFoto,);
  }
}
