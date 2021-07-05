import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:xlo_clone_mobx/app/components/widgets/page_tile.dart';
import 'package:xlo_clone_mobx/app/stores/page_store.dart';

class PageSection extends StatelessWidget {
  final PageStore pageStore = GetIt.I<PageStore>();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PageTile(
        label: 'Anúncios',
        highlighted: pageStore.page == 0,
        iconData: Icons.list,
        onTap: () {
          pageStore.setPage(0);
        },
      ),
      PageTile(
        label: 'Inserir Anúncio',
        highlighted: pageStore.page == 1,
        iconData: Icons.edit,
        onTap: () {
          pageStore.setPage(1);
        },
      ),
      PageTile(
        label: 'Chat',
        highlighted: pageStore.page == 2,
        iconData: Icons.chat,
        onTap: () {
          pageStore.setPage(2);
        },
      ),
      PageTile(
        label: 'Favoritos',
        highlighted: pageStore.page == 3,
        iconData: Icons.favorite,
        onTap: () {
          pageStore.setPage(3);
        },
      ),
      PageTile(
        label: 'Minha Conta',
        highlighted: pageStore.page == 4,
        iconData: Icons.person,
        onTap: () {
          pageStore.setPage(4);
        },
      ),
    ]);
  }
}
