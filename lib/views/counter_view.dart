import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedcappgg/viewmodels/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => CounterViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: Center(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(viewModel.counterServices.counterValue.toString()),
                    ElevatedButton(
                      onPressed: () {
                        viewModel.addValue();
                      },
                      child: const Text('Add Value'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        viewModel.navigateHomeView();
                      },
                      child: const Text('Navigate to home page'),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
