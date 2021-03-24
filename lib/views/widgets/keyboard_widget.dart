import 'package:calc/constants/project_consts.dart';
import 'package:calc/views/widgets/button_widget.dart';
import 'package:calc/views/widgets/buttons_row.dart';
import 'package:flutter/material.dart';

class KeyboardWidget extends StatelessWidget {
  final void Function(String) onTap;

  KeyboardWidget(this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonsRowWidget(buttons: [
            ButtonWidget(
              text: 'AC',
              onTap: onTap,
              bigButton: true,
              color: ProjectConsts.buttonDark,
            ),
            ButtonWidget(
              text: '%',
              onTap: onTap,
              color: ProjectConsts.buttonDark,
            ),
            ButtonWidget(
              text: '/',
              onTap: onTap,
              color: ProjectConsts.buttonOperation,
            ),
          ]),
          SizedBox(height: 1),
          ButtonsRowWidget(buttons: [
            ButtonWidget(
              text: '7',
              onTap: onTap,
            ),
            ButtonWidget(
              text: '8',
              onTap: onTap,
            ),
            ButtonWidget(
              text: '9',
              onTap: onTap,
            ),
            ButtonWidget(
              text: 'X',
              onTap: onTap,
              color: ProjectConsts.buttonOperation,
            ),
          ]),
          SizedBox(height: 1),
          ButtonsRowWidget(buttons: [
            ButtonWidget(
              text: '4',
              onTap: onTap,
            ),
            ButtonWidget(
              text: '5',
              onTap: onTap,
            ),
            ButtonWidget(
              text: '6',
              onTap: onTap,
            ),
            ButtonWidget(
              text: '-',
              onTap: onTap,
              color: ProjectConsts.buttonOperation,
            ),
          ]),
          SizedBox(height: 1),
          ButtonsRowWidget(buttons: [
            ButtonWidget(
              text: '1',
              onTap: onTap,
            ),
            ButtonWidget(
              text: '2',
              onTap: onTap,
            ),
            ButtonWidget(
              text: '3',
              onTap: onTap,
            ),
            ButtonWidget(
              text: '+',
              onTap: onTap,
              color: ProjectConsts.buttonOperation,
            ),
          ]),
          SizedBox(height: 1),
          ButtonsRowWidget(buttons: [
            ButtonWidget(
              text: '0',
              onTap: onTap,
              bigButton: true,
            ),
            ButtonWidget(
              text: ',',
              onTap: onTap,
            ),
            ButtonWidget(
              text: '=',
              onTap: onTap,
              color: ProjectConsts.buttonOperation,
            ),
          ]),
        ],
      ),
    );
  }
}
