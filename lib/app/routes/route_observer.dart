import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/main/view/bloc/user_exist_bloc.dart';

class MyObserver extends NavigatorObserver {

  final BuildContext context;

  MyObserver(this.context);

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    BlocProvider.of<UserExistBloc>(context).add(const UserExistEvent.getUserExist());
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
  }
}