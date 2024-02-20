class Logs 
{
  void log(String text)
  {
    print('${DateTime.now()} - $text');
  }
}
void main() 
{
  var log = Logs();
  log.log('Programm startup');
  log.log('Programm end');
}
