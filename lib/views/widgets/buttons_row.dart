import 'package:calc/views/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class ButtonsRowWidget extends StatelessWidget {
  final List<ButtonWidget> buttons;

  ButtonsRowWidget({required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold([], (list, element) {
          list.isEmpty
              ? list.add(element)
              : list.addAll([SizedBox(width: 1), element]);
          return list;
        }),
      ),
    );
  }
}
