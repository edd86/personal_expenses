import 'package:personal_expenses/feature/accounts_manager/data/model/accounts_model.dart';

abstract class AccountsManagerRepo {
  Future<bool> createAccount(AccountsModel accountModel);
}
