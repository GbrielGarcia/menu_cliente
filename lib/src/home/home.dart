import 'package:flutter/material.dart';
import 'package:frutasvideo/src/screen/almuerzo.dart';
import 'package:frutasvideo/src/screen/desayuno.dart';
import 'package:frutasvideo/src/screen/merienda.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final providerNavigator = Provider.of<PageViewNav>(context);

    return DefaultTabController(
      initialIndex: providerNavigator.currentPage,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                child: Row(
                  children: [
                    Text('Desayuno'),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Text('Almuerzo'),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Text('Merienda'),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            DesayunoScreen(),
            AlmuerzoScreen(),
            Meriendacreen(),
          ],
        ),
      ),
    );
  }
}
