import 'package:equatable/equatable.dart';

class ThemeEntity extends Equatable {
  final int themeMode;

  const ThemeEntity({required this.themeMode});

  @override
  // TODO: implement props
  List<Object?> get props => [themeMode];
}
