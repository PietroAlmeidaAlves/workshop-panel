import 'dart:html';

import 'package:flutter/material.dart';
import 'package:workshop_web/app/modules/roleta/ui/pages/create_brinde.dart';
import 'package:workshop_web/app/shared/pages/base_page.dart';
import 'package:workshop_web/app/shared/utils.dart';

class RoletaPage extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void openModal(){
    _scaffoldKey.currentState?.openEndDrawer();
  }


  final List<TabBarItem> tabBarItems = [
    TabBarItem(tabName:"Brindes"),
    TabBarItem(tabName:"Ganhadores"),
  ];

final List<Widget> pageList = [
  Container(),
  Container(),
];

 Widget get button => PodiButton.primary(
  title: "Novo Brinde",
  icon: PodiWebIcons.add,
  onTap: openModal,
 );

  @override
  Widget build (BuildContext context){
    return BasePage(
      pageTitle: "Roleta de Premios",
      hasTab: true,
      tabBarItems: tabBarItems,
      pageList: pageList,
      appBarActions: [button],
      overlayWidget: CreateBrindeModal(),
      scaffoldKey: _scaffoldKey,
    );
  }
}