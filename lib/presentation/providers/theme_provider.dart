import 'package:riverpod/riverpod.dart';
import 'package:widget_formatos/config/theme/app_theme.dart';

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

//UN simple boolean
final isDarkmodeProvider = StateProvider((ref) => false);

//un simple init
final selectedColorProvider = StateProvider((ref) => 0);

//UN objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

//COntroller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  //STATE = Estado = new AppTheme();
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
