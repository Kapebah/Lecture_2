//Выбрала шаблон "Одиночка", больше всего подходит, потому что гарантирует
//создание только одного экземпляра класса, а нам тут больше и не нужно
class Logs 
{
  static final Logs _instance = Logs._();
  factory Logs() => _instance; //фабричный метод, возвращает созданный экземпляр, или создает его при вызове
  Logs._(); //приватный конструктор
  void log(String text)
  {
    print('${DateTime.now()} - $text');
  }
}
void main() 
{
  var log = Logs();
  log.log('Programm startup\n');
  log.log('Programm end\n');
}
