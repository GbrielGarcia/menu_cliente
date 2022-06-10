import 'package:frutasvideo/src/widgets/videos_scrollables.dart';
import 'package:flutter/material.dart';

const desayunoVideos = [
  'assets/Desayuno1.mp4',
  'assets/Desayuno2.mp4',
  'assets/Desayuno3.mp4',
  'assets/Desayuno4.mp4',
  'assets/Desayuno5.mp4',
  'assets/Desayuno6.mp4',
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
class DesayunoView extends StatelessWidget {
  const DesayunoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VideosScrollable(pathsVideo: desayunoVideos, pathsFoto: todoFoto,);
  }
}
