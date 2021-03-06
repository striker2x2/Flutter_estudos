import 'package:aula01/utils/nav.dart';
import 'package:aula01/widgets/blue_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelloPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Page 2"),
      ),
      body: _body(context),
    );
  }

  _body(context) => Center(
        child: _button(context),
      );

  _button(context) => BlueButton("Voltar", onPressed: () => _onClickBack(context));

  _onClickBack(context) => pop(context);

}
