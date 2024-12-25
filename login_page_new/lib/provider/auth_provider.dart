import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final form = GlobalKey<FormState>();

  var islogin = true;
  var enterEmail = '';
  var enterPassword = '';

  void sumbit() {
    final _isvalid = form.currentState!.validate();

    if (!_isvalid) {
      return;
    }
    form.currentState!.save();
  }
}
