import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app_theme.dart';
import '../../../base/stateful_view_base.dart';
import '../home_view_model.dart';

/// HomeView
class HomeView extends StatefulViewBase {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ViewState<HomeView, HomeViewModel> {
  bool isInvisible = false;
  final _tabController = CupertinoTabController();

  @override
  void initState() {
    viewModel.currentIndex.listen((index) {
      _tabController.index = index;
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Future<void> onResumed() async {
    // TODO: implement onResumed
    super.onResumed();
  }

  @override
  Widget buildBody(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        return CupertinoTabView(builder: (context) {
          switch (index) {
            case 0:
              return Container();
            case 1:
              return CupertinoPageScaffold(child: Container());
            case 2:
              return Container();
            case 3:
              return Container();
            case 4:
              return Container();
            default:
              return Container();
          }
        });
      },
      controller: _tabController,
      tabBar: buildTabBar(context),
    );
  }

  CupertinoTabBar buildTabBar(BuildContext context) {
    const galsIcon = 'assets/images/home/ic_lips.png';
    const dressIcon = 'assets/images/home/ic_dress.png';
    return isInvisible
        ? InvisibleCupertinoTabBar()
        : CupertinoTabBar(
            onTap: (index) {
              // switch (index) {
              //   case 1:
              //     break;
              //   case 4:
              //     break;
              //   default:
              //     break;
              // }
              viewModel.currentIndex(index);
            },
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                  ),
                  label: 'Mua sắm'),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: 'Danh mục'),
              BottomNavigationBarItem(
                  icon: _tabIcon(dressIcon, viewModel.currentIndex.value == 2,
                      Colors.black),
                  label: 'Mới'),
              BottomNavigationBarItem(
                  icon: _tabIcon(
                      galsIcon, viewModel.currentIndex.value == 3, Colors.red),
                  label: 'Gals'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Tôi'),
            ],
          );
  }

  @override
  void initViewState() async {
    await viewModel.getInfo();
    super.initViewState();
  }

  Widget _tabIcon(String iconPath, bool selected, Color colorSelect) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 2.5),
        child: Center(
            child: Image.asset(
          iconPath,
          color: selected ? colorSelect : null,
          width: 22,
        )));
  }
}

class InvisibleCupertinoTabBar extends CupertinoTabBar {
  static const dummyIcon = Icon(IconData(0x0020));

  InvisibleCupertinoTabBar()
      : super(
          items: [
            const BottomNavigationBarItem(icon: dummyIcon),
            const BottomNavigationBarItem(icon: dummyIcon),
          ],
        );

  @override
  Size get preferredSize => const Size.square(0);

  @override
  Widget build(BuildContext context) => const SizedBox();

  @override
  InvisibleCupertinoTabBar copyWith({
    Key? key,
    List<BottomNavigationBarItem>? items,
    Color? backgroundColor,
    Color? activeColor,
    Color? inactiveColor,
    double? iconSize,
    Border? border,
    int? currentIndex,
    ValueChanged<int>? onTap,
  }) =>
      InvisibleCupertinoTabBar();
}
