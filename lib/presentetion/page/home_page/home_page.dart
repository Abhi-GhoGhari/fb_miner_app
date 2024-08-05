import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../controller/theam_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("demo"),
              accountEmail: Text("demo"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Welcome"),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<TheamController>(
                context,
                listen: false,
              ).changeTheme();
            },
            icon: const Icon(Icons.brightness_4_outlined),
          ),
        ],
      ),
    );
  }
}
