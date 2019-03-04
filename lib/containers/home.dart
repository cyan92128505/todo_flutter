import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:todo_flutter/actions/actions.dart';
import 'package:todo_flutter/models/app_state.dart';
import 'package:todo_flutter/presentation/home_screen.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector(
      builder: (BuildContext context, AppState state) {
        return HomeScreen(
            title: 'Home',
            counter: state.home.counter,
            account: state.auth.account);
      },
      converter: (Store<AppState> store) {
        return store.state;
      },
      onInit: (store) => store.dispatch(LoadAction()),
    );
  }
}
