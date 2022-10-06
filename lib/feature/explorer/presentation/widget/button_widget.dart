import 'package:flutter/material.dart';

import '../../../../core/themes/app_color.dart';

class ButtonWidget extends StatefulWidget {
  final String buttonTitle;
  final Color buttonColor;
  final Color? buttonTitleColor;
  final bool isAddTypeButton;
  final double heightFactor;
  final bool isActive;
  final Function onClick;
  const ButtonWidget(
      {Key? key,
      required this.buttonTitle,
      required this.buttonColor,
      this.buttonTitleColor,
      required this.isAddTypeButton,
      required this.heightFactor,
      required this.isActive,
      required this.onClick})
      : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: widget.buttonColor,
        disabledColor: mainButtonColor,
        height: 7.5 * widget.heightFactor,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.3),
            borderSide: BorderSide.none),
        onPressed: widget.isActive ? () => widget.onClick() : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.isAddTypeButton ? const Icon(Icons.add) : Container(),
            Text(
              widget.buttonTitle,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: buttonTextColor,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ));
  }
}
