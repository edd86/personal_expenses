import 'package:personal_expenses/data/local/database_helper.dart';
import 'package:personal_expenses/feature/login/data/mapper/user_mapper.dart';
import 'package:personal_expenses/feature/login/domain/model/user_login.dart';
import 'package:personal_expenses/feature/login/domain/repository/login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  @override
  Future<bool> isUserRegistered(UserLogin user) async {
    final db = await DatabaseHelper().database;
    try {
      final newUser = UserMapper.toModel(user);
      final response = await db.query(
        'Users',
        where: 'email = ? AND password = ?',
        whereArgs: [newUser.email, newUser.password],
      );
      if (response.isNotEmpty) {
        return true;
      }
      return false;
    } catch (error) {
      return false;
    }
  }
}
