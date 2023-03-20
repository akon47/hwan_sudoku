import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/game_view_model.dart';

class GameView extends StatefulWidget {
  const GameView({Key? key}) : super(key: key);

  @override
  State<GameView> createState() => _GameState();
}

class _GameState extends State<GameView> {
  late GameViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = Provider.of<GameViewModel>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game'),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 500,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.orange,
            ),
          ),
          child: GridView.count(
            crossAxisCount: 9,
            children: viewModel.cells
                .map(
                  (cell) => ChangeNotifierProvider(
                    create: (_) => cell,
                    child: Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.orange,
                          ),
                        ),
                        child: Text('A')),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
