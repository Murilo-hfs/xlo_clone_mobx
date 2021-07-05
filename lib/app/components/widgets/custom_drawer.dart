import 'package:flutter/material.dart';
import 'package:xlo_clone_mobx/app/components/widgets/page_section.dart';

import 'custom_drawer_header.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: ClipRRect(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
        child: Drawer(
          child: ListView(
            children: [
              CustomDrawerHeader(),
              PageSection(),
            ],
          ),
        ),
      ),
    );
  }
}
