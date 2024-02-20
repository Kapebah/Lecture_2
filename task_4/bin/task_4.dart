//Использовала шаблон Стратегия, т.к. с условием этой задачи 
//этот шаблон поинтереснее, можно сделать выбор того, как входить в систему
abstract class AuthorizationStrategy
{
  bool auth(String records);
}

class PhoneAuthorization implements AuthorizationStrategy
{
  @override
  bool auth(String records)
  {
    if(records == "+37377725627")
    {
      return true;
    }
    else { return false; }
  }
}

class PasswordAuthorization implements AuthorizationStrategy
{
  @override
  bool auth(String records)
  {
    if(records == "Sh1n2704") { return true; }
    else { return false; }
  }
}

class EmailAuthorication implements AuthorizationStrategy
{
  @override
  bool auth(String records)
  {
    if(records == "shindanotamashi@gmail.com") { return true; }
    else { return false; }
  }
}

class Authorization
{
  AuthorizationStrategy _strategy;
  Authorization(this._strategy);

  void setStrategy(AuthorizationStrategy strategy)
  {
    _strategy = strategy;
  }

  bool authorize(String records)
  {
    if (_strategy != null) { return _strategy.auth(records); }
    else { return false; }
  }
}
void main() 
{
  var password = PasswordAuthorization();
  var phone = PhoneAuthorization();
  var email = EmailAuthorication();

  var auth_1 = Authorization(password);
  print('Authorization by password: ${auth_1.authorize('Sh1n2704')}.\n');

  var auth_2 = Authorization(phone);
  print('Authorization by phone number: ${auth_2.authorize("+37377725627")}.\n');

  var auth_3 = Authorization(email);
  print('Authorization by email: ${auth_3.authorize("shindanotamashi@gmail.com")}.\n');
}
