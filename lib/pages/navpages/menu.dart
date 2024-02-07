import 'package:cavosh_app/components/search_bar.dart';
import 'package:cavosh_app/components/tab_bar.dart';
import 'package:cavosh_app/misc/color.dart';
import 'package:flutter/material.dart';

class AppMenu extends StatefulWidget {
  const AppMenu({super.key});

  @override
  State<AppMenu> createState() => _AppMenuState();
}

class _AppMenuState extends State<AppMenu> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(top: 80, left: 8),
                    child: const Text(
                      "Menu",
                      style: TextStyle(
                        color: AppColors.color1,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                AppSearchBar(height: 120),
                Container(
                  margin: const EdgeInsets.only(left: 330, top: 137),
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColors.buttonTwo,
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              dividerColor: Colors.white,
              onTap: (index) {
                print(_tabController.index);
              },
              tabs: [
                AppTabBar(index: _tabController.index),
                AppTabBar(index: _tabController.index),
                AppTabBar(index: _tabController.index),
              ],
            ),
            SizedBox(
              height: 500,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(height: 200, child: Text("HOT")),
                  Container(height: 200, child: Text("COLD")),
                  Container(height: 200, child: Text("BREAD")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
