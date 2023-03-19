import 'package:flutter/material.dart';
import 'package:hwan_sudoku/view/stage_view.dart';
import 'package:provider/provider.dart';

import '../locator.dart';
import '../repository/common_repository.dart';
import '../view_models/main_view_model.dart';
import '../view_models/stage_view_model.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late MainViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = Provider.of<MainViewModel>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<MainViewModel>(
          builder: (_, model, __) => Text(model.title),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: Consumer<MainViewModel>(
                  builder: (_, model, __) => Text(
                    model.title,
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              constraints: const BoxConstraints(
                minHeight: 50.0,
                maxWidth: 300.0,
              ),
              child: Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(60),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangeNotifierProvider(
                            create: (_) => StageViewModel(
                              commonRepo: locator<CommonRepository>(),
                            ),
                            child: const StageView(),
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'New Game',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
