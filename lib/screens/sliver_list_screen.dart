// sliver_list_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/item_view_model.dart';

class SliverListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<ItemViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('SliverList Example'),
      ),
      body: ChangeNotifierProvider<ItemViewModel>(
        create: (_) => viewModel,
        child: Consumer<ItemViewModel>(
          builder: (context, model, child) {
            return CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) {
                      final item = model.items[index];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                        child: ListTile(
                          title: Text(item.title),
                          subtitle: Text(item.description),
                        ),
                      );
                    },
                    childCount: model.items.length,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
