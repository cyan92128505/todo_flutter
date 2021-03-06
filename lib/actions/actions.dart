import 'dart:async';

class IncreaseAction {}

class CheckLoggedInAction {
  CheckLoggedInAction({this.completer});
  final Completer completer;
}

class LogoutSuccessAction {}

class LoginSuccessAction {
  LoginSuccessAction({this.account});
  final String account;
}

class LoadedAction {
  LoadedAction({this.isLogin, this.account});
  final bool isLogin;
  final String account;
}
