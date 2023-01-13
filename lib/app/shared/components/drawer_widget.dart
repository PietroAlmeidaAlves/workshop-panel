import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workshop_web/app/shared/utils.dart';

class DrawerWidget extends StatelessWidget {
  final double _width = 240;
  final double _height = double.infinity;

  DrawerWidget({super.key});
  List<DrawerItem> itens = [
    DrawerItem("Inicio", PodiWebIcons.home, false),
    DrawerItem("Roleta de Premios", PodiWebIcons.gift, true),
  ];
  Widget _buildDrawer() {
    Widget _buildBackground({required Widget child}) {
      return Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: PodiColors.green[50],
            border: Border(right: BorderSide(color: PodiColors.green)),
          ),
          child: Column(children: [
            SizedBox(
                height: 80,
                child: Center(child: SvgPicture.asset(PodiIcons.logoPodi))),
            const SizedBox(height: 8),
            child,
          ]));
    }

    Widget _buildItem({required IconData icon, required String name}) {
      return Container(
          height: 48,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Row(children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Icon(icon),
            ),
            const SizedBox(width: 4),
            Text(
              name,
              style: PodiTexts.label2.weightMedium,
            )
          ]));
    }

    Widget _buildList() {
      return ListView.builder(
        itemBuilder: (context, index) {
          var item = itens[index];
          return _buildItem(icon: item.icon, name: item.name);
        },
        itemCount: itens.length,
        shrinkWrap: true,
      );
    }

    return _buildBackground(child: _buildList());
  }

  @override
  Widget build(BuildContext context) {
    return _buildDrawer();
  }
}

class DrawerItem {
  String name;
  IconData icon;
  bool selected;
  DrawerItem(this.name, this.icon, this.selected);
}
