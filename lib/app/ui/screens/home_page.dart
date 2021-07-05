import 'package:flutter/material.dart';
import 'package:xlo_clone_mobx/app/components/widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        drawer: CustomDrawer(),
      ),
    );
  }
}
