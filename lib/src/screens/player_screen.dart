import 'package:frutasvideo/src/views/merienda_view.dart';
import 'package:frutasvideo/src/views/desayuno_view.dart';
import 'package:frutasvideo/src/widgets/category_card.dart';
import 'package:flutter/material.dart';

import '../views/todo_view.dart';

const categories = ['Desayuno', 'Almuerzo', 'Merienda', 'Todo'];

enum Categories { desayuno, almuerzo, merienda, todo }

final views = {
  // Categories.desayuno: () => const DesayunoView(),
  // Categories.almuerzo: () => const AlmuerzoView(),
  // Categories.merienda: () => const MeriendaView(),
  Categories.todo: () => const TodoView(),
};

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  Categories category = Categories.desayuno;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                child: CategoryCard(
                  label: 'Alimentacion Saludable'.toUpperCase(),

                ),
                // ListView.builder(
                //   scrollDirection: Axis.horizontal,
                //   itemCount: categories.length,
                //   itemBuilder: (_, index) => CategoryCard(
                //     label: categories[index],
                //     onTap: () {
                //       final options = {
                //         'Desayuno': Categories.desayuno,
                //         'Almuerzo': Categories.almuerzo,
                //         'Merienda': Categories.merienda,
                //         'Cena': Categories.cena
                //       };
                //
                //       setState(() {
                //         category =
                //             options[categories[index]] ?? Categories.desayuno;
                //       });
                //     },
                //   ),
                // ),
              ),
            ),
            views[category]?.call() ?? const TodoView(),
          ],
        ),
      ),
    );
  }
}
