import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/game_view_model.dart';
import '../view_models/stage_view_model.dart';
import 'game_view.dart';

class StageView extends StatefulWidget {
  const StageView({Key? key}) : super(key: key);

  @override
  State<StageView> createState() => _StageViewState();
}

class _StageViewState extends State<StageView> {
  late StageViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = Provider.of<StageViewModel>(context, listen: false);
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stage'),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 500,
          ),
          child: GridView.count(
            crossAxisCount: 5,
            children: Iterable<int>.generate(25)
                .map((x) => _StageButton(x + 1))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class _StageButton extends StatelessWidget {
  const _StageButton(this.stage, {Key? key}) : super(key: key);

  final int stage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ChangeNotifierProvider(
                create: (_) => GameViewModel(stage),
                child: const GameView(),
              ),
            ),
          );
        },
        child: Text(
          '$stage',
          style: const TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
