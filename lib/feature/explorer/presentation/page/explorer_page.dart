import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/explorer_cubit/explorer_cubit.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({Key? key}) : super(key: key);

  @override
  State<ExplorerPage> createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
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
