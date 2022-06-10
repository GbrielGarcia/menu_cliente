import 'package:frutasvideo/src/widgets/videos_scrollables.dart';
import 'package:flutter/material.dart';

const todoVideos = [
  'assets/Desayuno1.mp4',
  'assets/Almuerzo1.mp4',
  'assets/Merienda1.mp4',
  'assets/Desayuno2.mp4',
  'assets/Almuerzo2.mp4',
  'assets/Merienda2.mp4',
  'assets/Desayuno3.mp4',
  'assets/Almuerzo3.mp4',
  'assets/Merienda3.mp4',
  'assets/Desayuno4.mp4',
  'assets/Almuerzo4.mp4',
  'assets/Merienda4.mp4',
  'assets/Desayuno5.mp4',
  'assets/Almuerzo5.mp4',
  'assets/Merienda5.mp4',
  'assets/Desayuno6.mp4',
  'assets/Almuerzo6.mp4',
  'assets/Merienda6.mp4',
];

const todoFoto = [
  'assets/img/1.jpg',
  'assets/img/7.jpg',
  'assets/img/13.jpg',
  'assets/img/2.jpg',
  'assets/img/8.jpg',
  'assets/img/14.jpg',
  'assets/img/3.jpg',
  'assets/img/9.jpg',
  'assets/img/15.jpg',
  'assets/img/4.jpg',
  'assets/img/10.jpg',
  'assets/img/16.jpg',
  'assets/img/5.jpg',
  'assets/img/11.jpg',
  'assets/img/17.jpg',
  'assets/img/6.jpg',
  'assets/img/12.jpg',
  'assets/img/18.jpg',
];

class TodoView extends StatelessWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VideosScrollable(
      pathsVideo: todoVideos,
      pathsFoto: todoFoto,
    );
  }
}
