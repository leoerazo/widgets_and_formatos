import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_formatos/config/menu/menu_items.dart';
import 'package:widget_formatos/presentation/widgets/side_menu.dart';
//import 'package:widget_formatos/presentation/screens/buttons/buttons_screens.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'Home_Screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
      drawer: SideMenu(scaffoldKey: scaffoldKey),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomListTile(menuItem: menuItem);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final MenuItem menuItem;

  const _CustomListTile({required this.menuItem});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary), //leading: first
      trailing: Icon(Icons.arrow_forward_ios_rounded,
          color: colors.primary), //trailing: last
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      onTap: () {
        //Navigator.of(context).push(MaterialPageRoute(builder:(context) => const ButtonsScreen()));
        //Navigator.pushNamed(context, menuItem.link);
        //context.pushNamed(CardsScreen.name);
        context.push(menuItem.link);
      },
    );
  }
}
