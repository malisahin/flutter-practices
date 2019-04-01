import 'dart:async';

import 'package:combine_mobile/sections/login-bloc/login-validator.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends Object with LoginValidator implements BaseBloc {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  StreamSink<String> get emailChanged => _emailController.sink;

  StreamSink<String> get paswordChanged => _passwordController.sink;

  Stream<String> get email => _emailController.stream.transform(emailValidator);

  Stream<String> get password =>
      _passwordController.stream.transform(passwordValidator);

  Stream<bool> get submitCheck =>
      Observable.combineLatest2(email, password, (e, p) => true);

  @override
  void dispose() {
    _emailController?.close();
    _passwordController?.close();
  }
}

abstract class BaseBloc {
  void dispose();
}
