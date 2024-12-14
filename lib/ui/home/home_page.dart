import 'package:flutter/material.dart';
import 'package:x_clone/core/core.dart';
import 'package:x_clone/ui/home/components/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
      title: 'X Clone',
      appBar: AppBar(),
      drawer: const AppDrawer(),
      body: SafeArea(
          child: Center(
        child: Text(
          'Home Page',
          style: context.responsiveTextTheme.titleMedium,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement add thread
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
