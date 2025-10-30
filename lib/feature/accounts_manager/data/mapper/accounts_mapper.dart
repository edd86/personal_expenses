import 'package:personal_expenses/feature/accounts_manager/data/model/accounts_model.dart';
import 'package:personal_expenses/feature/accounts_manager/domain/entity/accounts_entity.dart';

class AccountsMapper {
  static AccountsEntity toEntity(AccountsModel model) {
    return AccountsEntity(
      id: model.id,
      name: model.name,
      accountType: model.accountType,
      balance: model.balance,
      currency: model.currency,
      icon: model.icon,
      color: model.color,
      isActive: model.isActive,
      userId: model.userId
    );
  }

  static AccountsModel toModel(AccountsEntity entity) {
    return AccountsModel(
      id: entity.id,
      name: entity.name,
      accountType: entity.accountType,
      balance: entity.balance,
      currency: entity.currency,
      icon: entity.icon,
      color: entity.color,
      isActive: entity.isActive,
      userId: entity.userId
    );
  }
}
