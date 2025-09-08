import 'package:personal_expenses/feature/login/domain/model/user.dart';
import 'package:personal_expenses/feature/login/data/model/user_model.dart';

class UserMapper {
  static UserModel toModel(User entity) {
    return UserModel(
      id: entity.id,
      name: entity.name,
      email: entity.email,
      password: entity.password,
      currency: entity.currency,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  static User toEntity(UserModel model) {
    return User(
      id: model.id,
      name: model.name,
      email: model.email,
      password: model.password,
      currency: model.currency,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }
}
