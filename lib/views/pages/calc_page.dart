import 'package:calc/models/memory.dart';
import 'package:flutter/material.dart';

import 'package:calc/views/widgets/display_widget.dart';
import 'package:calc/views/widgets/keyboard_widget.dart';

class CalcPage extends StatefulWidget {
  @override
  _CalcPageState createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  final Memory memory = Memory();

  void _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DisplayWidget(memory.value),
        KeyboardWidget(_onPressed),
      ],
    );
  }
}
