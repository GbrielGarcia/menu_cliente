import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, this.title, this.description});

  final String? title, description;

  @override
  Widget build(BuildContext context) {
    return      Image.asset(
      title!,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width - 50,
    );

      // Column(
      // children: [

        // const SizedBox(height: 25),
        // Text(
        //   title,
        //   style: const TextStyle(color: Colors.black, fontSize: 26),
        // ),
        // const SizedBox(height: 35),
        // Text(
        //   description,
        //   style: const TextStyle(color: Colors.black, fontSize: 16),
        // ),
      // ],
    // );
  }
}
