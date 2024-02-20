//Решила попробовать enum =)
enum Format
{
  PDF,
  HTML,
  JSON,
}

class Document
{
  void docFormat(Format format) 
  {
    switch(format)
    {
      case Format.PDF:
      print('You have create a PDF format');
      break;
      case Format.HTML:
      print('You have create a HTML format');
      break;
      case Format.JSON:
      print('You have create a JSON format');
      break;
      default:
      print('Wrong format');
      break;
    }
  }
}

void main(List<String> arguments) 
{
  var doc = Document();
  doc.docFormat(Format.PDF);
  doc.docFormat(Format.HTML);
  doc.docFormat(Format.JSON);
}
