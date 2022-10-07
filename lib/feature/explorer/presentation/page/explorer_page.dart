import 'package:coco_app/feature/explorer/data/data_source/local_data/category_tag_data.dart';
import 'package:coco_app/feature/explorer/data/model/category_tag_model.dart';
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

  /// Category ids
  List<int> categoryIds = [];

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
                                onChange: (value) {
                                  if (value.isEmpty) {
                                    setState(() {
                                      categoryIds.clear();
                                    });
                                  }
                                },
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
                              .emitSearchResult(categoryIds, 1);
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 380),
                  child: ListView.builder(
                      itemCount: categoryTags.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: FilterChip(
                            label: Text(categoryTags[index].title),
                            onSelected: (value) => setState(
                              () {
                                /// Add the tagNumber to categoryIds
                                ///
                                /// So we can search using this list.
                                /// else delete it from the list when uncheck the chip.

                                if (value) {
                                  categoryIds
                                      .add(categoryTags[index].tagNumber);
                                  textController.text +=
                                      "${categoryTags[index].title} ";
                                } else {
                                  categoryIds
                                      .remove(categoryTags[index].tagNumber);
                                  if (categoryIds.isEmpty) {
                                    textController.clear();
                                  } else {
                                    /// Update the text inside the textformfield
                                    ///
                                    /// when we delete tagNumber from the categoryIds list.
                                    textController.clear();
                                    categoryIds.map((e) {
                                      textController.text +=
                                          "${categoryTags[e - 1].title} ";
                                    }).toList();
                                  }
                                }

                                categoryTags[index].isSelected = value;
                              },
                            ),
                            checkmarkColor: Colors.white,
                            selected: categoryTags[index].isSelected,
                            backgroundColor: chipColor,
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ));
  }
}
