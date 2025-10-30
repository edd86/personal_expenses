import 'package:personal_expenses/feature/login/domain/model/user_login.dart';

abstract class LoginRepo {
  Future<bool> isUserRegistered(UserLogin user);
}
