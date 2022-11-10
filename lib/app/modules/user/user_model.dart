// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:up_invest/app/modules/user/avatar_model.dart';

class UserModel {
  String name;
  String email;
  AvatarModel avatar;
  String password;

  UserModel({
    required this.name,
    required this.email,
    required this.avatar,
    required this.password,
  });
}
