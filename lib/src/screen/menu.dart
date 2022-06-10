import 'package:flutter/material.dart';
import 'package:frutasvideo/src/home/home.dart';

import '../widgets/button_custom.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(flex: 1, child: Container()),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Image.asset(
                    'assets/img.png',
                    height: 100.0,
                    fit: BoxFit.scaleDown,
                  ))
            ],
          ),
          Flexible(flex: 1, child: Container()),
          CustomButton(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home()));
            },
            text: 'Iniciar',
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
