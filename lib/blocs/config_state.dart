part of 'config_cubit.dart';

final class ConfigState extends Equatable {

  const ConfigState({required this.locale});

  final Locale locale;

  ConfigState copyWith({Locale? locale}) => ConfigState(locale: locale ?? this.locale);

  @override
  List<Object> get props => [locale];
}
