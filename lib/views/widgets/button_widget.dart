import 'package:calc/constants/project_consts.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final bool bigButton;
  final Color color;
  final void Function(String) onTap;

  ButtonWidget({
    required this.text,
    this.bigButton = false,
    this.color = ProjectConsts.buttonDefault,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: bigButton ? 2 : 1,
      child: ElevatedButton(
        onPressed: () => onTap(text),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => this.color),
          elevation: MaterialStateProperty.resolveWith((states) => 2),
          shape: MaterialStateProperty.resolveWith((states) =>
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))),
        ),
        child: Text(
          this.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
