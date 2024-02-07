import 'package:cavosh_app/components/tab_bar.dart';
import 'package:flutter/material.dart';

class AppTabBars extends Tab {
  const AppTabBars({super.key});
  static Map<int, Tab> tabs = {
    1: Tab(text: "Hot drinks"),
    2: Tab(text: "Cold drinks"),
    3: Tab(text: "Slice Breads")
  };
}
