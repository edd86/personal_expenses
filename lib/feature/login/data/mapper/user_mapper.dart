import 'package:personal_expenses/feature/login/domain/model/user_login.dart';
import 'package:personal_expenses/feature/login/data/model/user_model.dart';

class UserMapper {
  static UserLoginModel toModel(UserLogin entity) {
    return UserLoginModel(
      id: entity.id,
      email: entity.email,
      password: entity.password,
    );
  }

  static UserLogin toEntity(UserLoginModel model) {
    return UserLogin(
      id: model.id,
      email: model.email,
      password: model.password,
    );
  }
}
