import 'package:personal_expenses/feature/accounts_manager/domain/entity/account_entity.dart';

abstract class AccountsManagerRepo {
  Future<bool> createAccount(AccountEntity accountEntity);
}
