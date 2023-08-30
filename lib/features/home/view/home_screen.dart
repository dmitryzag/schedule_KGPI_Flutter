import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:schedule/custom_icons.dart';
import 'package:schedule/router/router.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [SearchRoute(), FavoriteRoute(), AuthorRoute()],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) => _openPage(index, tabsRouter),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CustomIcons.book), label: 'Факультеты'),
              BottomNavigationBarItem(
                  icon: Icon(CustomIcons.heart), label: 'Избранное'),
              BottomNavigationBarItem(
                  icon: Icon(CustomIcons.bender), label: 'Автор'),
            ],
          ),
        );
      },
    );
  }

  void _openPage(int index, TabsRouter tabsRouter) {
    tabsRouter.setActiveIndex(index);
  }
}
