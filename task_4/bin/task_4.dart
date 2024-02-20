class Authorization
{
  bool logIn = false;
  String logInUser = "";

  bool get loggedIn => logIn;
  String get loggedInUser => logInUser;

  void login(String username, String password)
  {
    if(username == "Sh1nda" && password == "Sh1n2704")
    {
      logIn = true;
      logInUser = "Sh1nda";
      print('The user $username has logged in [${DateTime.now()}].\nWelcome, $username!');
    }
    else { print('You entered an invalid login or password'); }
  }
  void logout()
  {
    logIn = false;
    logInUser = "";
    print('\nGoodbye!\nYou have successfully logged out [${DateTime.now()}].');
  }
}
void main() 
{
  var user = Authorization();
  user.login("Sh1nda", "Sh1n2704");
  user.logout();
  print('');
  user.login("aaa", "bbb");
}
