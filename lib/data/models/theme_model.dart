import '../../domain/entities/theme_entity.dart';

class ThemeModel extends ThemeEntity {
  const ThemeModel({required super.themeMode});

  factory ThemeModel.fromMap(Map<String, dynamic> map) {
    return ThemeModel(themeMode: map["themeMode"]);
  }
}
