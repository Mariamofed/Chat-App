import 'package:chat_app/models/user_model.dart';
import 'package:flutter/material.dart';

final vm = ViewModel();

class ViewModel {

  ValueNotifier<List<UserModel>> users = ValueNotifier([]);


}