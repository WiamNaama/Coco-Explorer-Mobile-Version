import 'package:coco_app/feature/explorer/presentation/widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_string.dart';
import '../../../../core/themes/app_color.dart';
import '../../../../core/util/app_size_config.dart';
import '../../bloc/explorer_cubit/explorer_cubit.dart';
import '../widget/button_widget.dart';

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
    AppSizeConfig.init(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainButtonColor,
          title: Text(
            explorerTitle,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              /// Text form field, search button widget section.
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Form(
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
                                onTap: () => {},
                              ),
                            ],
                          )),
                    ),
                    Expanded(
                      flex: 1,
                      child: ButtonWidget(
                        isActive: true,
                        isAddTypeButton: false,
                        buttonColor: mainButtonColor,
                        buttonTitle: search,
                        heightFactor: AppSizeConfig.heightFactor,
                        onClick: () {
                          context
                              .read<ExplorerCubit>()
                              .emitSearchResult([2], 1);
                        },
                      ),
                    )
                  ],
                ),
              ),

              /// Category tag section
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    categoryTag,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ),

              /// Divider section.
              const Padding(
                padding: EdgeInsets.only(right: 200, left: 17, top: 10),
                child: Divider(
                  color: secondaryColor,
                ),
              ),

              /// Chips section.
            ],
          ),
        ));
  }
}
