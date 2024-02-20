class User
{
  String name;
  User(this.name);
}
//Использовала шаблон "Репозиторий", ибо по условию нам нужна
//"абстрактная база данных пользователей", а данный шаблон подразумевает
//создание коллекции, где и будут храниться данные о пользователях
class UserRepository
{
  List<User> users = [];
  void createUser(User enteredUser)
  {
    users.add(enteredUser);
    print('You have create the new user ${enteredUser.name}');
  }

  void removeUser(User enteredUser)
  {
    if(users.contains(enteredUser))
    {
      users.remove(enteredUser);
      print('You have remove the user ${enteredUser.name}');
    }
    else { print('User ${enteredUser.name} not found'); }
  }

  void editUser(User oldUser, User newUser)
  {
    if(users.contains(oldUser))
    {
      users[users.indexOf(oldUser)] = newUser;
      print('User ${oldUser.name} has been updated to user ${newUser.name}');
    }
    else { print('User ${oldUser.name} not found'); }
  }
  void getUser(String name)
  {
    for(var user in users)
    {
      if(user.name == name)
      {
        print('Recieved user: $name');
        break;
      }
    print('User $name not found');
    break;
    }
  }
}
void main() 
{
  var user_1 = User("Darya");
  var user_2 = User("Artem");
  var user_3 = User("Kirill");
  var user_4 = User("Victoria");

  var userRepository = UserRepository();
  userRepository.createUser(user_1);
  userRepository.createUser(user_2);
  userRepository.createUser(user_3);
  userRepository.createUser(user_4);
  print('');

  print('Present users:');
  for(var user in userRepository.users) { print(user.name); }
  print('');

  var newUser = User("Andrew");
  userRepository.editUser(user_3, newUser);
  print('Present users after editing:');
  for(var user in userRepository.users) { print(user.name); }
  print('');

  userRepository.removeUser(user_4);
  print('Present users after removing:');
  for(var user in userRepository.users) { print(user.name); }
  print('');

  String someUser_1 = "Darya";
  String someUser_2 = "Helen";
  userRepository.getUser(someUser_1);
  userRepository.getUser(someUser_2);
}
