// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return AuthState(
      isLogin: json['isLogin'] as bool, account: json['account'] as String);
}

Map<String, dynamic> _$AuthStateToJson(AuthState instance) =>
    <String, dynamic>{'isLogin': instance.isLogin, 'account': instance.account};

HomePageState _$MainPageStateFromJson(Map<String, dynamic> json) {
  return HomePageState(counter: json['counter'] as int);
}

Map<String, dynamic> _$MainPageStateToJson(HomePageState instance) =>
    <String, dynamic>{'counter': instance.counter};

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState(
      home: json['main'] == null
          ? null
          : HomePageState.fromJson(json['main'] as Map<String, dynamic>),
      auth: json['auth'] == null
          ? null
          : AuthState.fromJson(json['auth'] as Map<String, dynamic>));
}

Map<String, dynamic> _$AppStateToJson(AppState instance) =>
    <String, dynamic>{'auth': instance.auth, 'main': instance.home};
