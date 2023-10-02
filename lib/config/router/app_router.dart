
import 'package:go_router/go_router.dart';
import 'package:widget_formatos/presentation/screens/Cards/cards_screen.dart';
import 'package:widget_formatos/presentation/screens/Home/home_screen.dart';
import 'package:widget_formatos/presentation/screens/buttons/buttons_screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes:[
    GoRoute(
      path:'/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path:'/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path:'/Cards',
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    )
  ]
);