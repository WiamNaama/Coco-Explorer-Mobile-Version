import 'package:coco_app/feature/explorer/presentation/widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_string.dart';
import '../../../../core/themes/app_color.dart';
import '../../bloc/explorer_cubit/explorer_cubit.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({Key? key}) : super(key: key);

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: [
          Text(
            "Search by Category",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormFieldWidget(
                    textEditingController: textController,
                    keyboardType: TextInputType.name,
                    lableText: categoryTag,
                    labelColor: borderColor,
                    fontColor: secondaryColor,
                    fontSize: 14,
                    maxlines: 2,
                    onTap: () => {print("Wiam Hello.")},
                  ),
                ],
              )),
          Center(
            child: TextButton(
                onPressed: () {
                  context.read<ExplorerCubit>().emitSearchResult([2], 1);
                },
                child: const Text("Click me")),
          )
        ],
      ),
    ));
  }
}
