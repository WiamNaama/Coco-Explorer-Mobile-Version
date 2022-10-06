import 'package:flutter/material.dart';

import '../../../../core/themes/app_color.dart';

class TextFormFieldWidget extends StatefulWidget {
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  final int? maxLength;
  final String lableText;
  final String hintText;
  final Color labelColor;
  final Color fontColor;
  final double fontSize;
  final int maxlines;
  final VoidCallback? onTap;
  final Function(String)? onChange;

  const TextFormFieldWidget({
    Key? key,
    required this.textEditingController,
    required this.keyboardType,
    this.maxLength,
    required this.lableText,
    this.hintText = "",
    required this.labelColor,
    required this.fontColor,
    required this.fontSize,
    required this.maxlines,
    this.onTap,
    this.onChange,
  }) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  void initState() {
    super.initState();
    widget.textEditingController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onTap: widget.onTap,
        onChanged: widget.onChange,
        controller: widget.textEditingController,
        keyboardType: widget.keyboardType,
        autofocus: false,
        textAlign: TextAlign.left,
        maxLength: widget.maxLength,
        maxLines: widget.maxlines,
        cursorColor: widget.fontColor,
        style: TextStyle(
          color: widget.fontColor,
          fontSize: widget.fontSize,
        ),
        decoration: InputDecoration(
          suffixIcon: widget.textEditingController.text.isEmpty
              ? Container(
                  width: 0,
                )
              : IconButton(
                  onPressed: () {
                    widget.textEditingController.clear();
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                ),
          focusColor: Colors.black,
          labelText: widget.lableText,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: widget.labelColor,
            fontSize: widget.fontSize,
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: borderColor, width: 2.0),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              )),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: focusedColor, width: 2.0),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: errorColor,
              width: 2.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: errorColor, width: 2.0),
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          errorStyle: const TextStyle(
            color: errorColor,
            fontSize: 10.0,
          ),
          contentPadding: const EdgeInsets.all(16),
          alignLabelWithHint: true,
          errorMaxLines: 3,
          enabled: true,
        ),
      ),
    );
  }
}
