//Использовала шаблон Стратегия, подходит сюда больше всего
//просто чтобы иметь возможность динамически выбирать, какой формат хотим использовать
abstract class FormatStrategy
{
  void format();
}

class PDFFormat implements FormatStrategy
{
  @override
  void format()
  {
    print('You have create a PDF document');
  }
}

class HTMLFormat implements FormatStrategy
{
  @override
  void format()
  {
    print('You have create a HTML document');
  }
}

class JSONFormat implements FormatStrategy
{
  @override
  void format()
  {
    print('You have create a JSON document');
  }
}
class Document
{
  FormatStrategy _format;
  Document(this._format);
  void docFormat()
  {
    _format.format();
  }
}

void main() 
{
  var docPDF = Document(PDFFormat());
  docPDF.docFormat();

  var docHTML = Document(HTMLFormat());
  docHTML.docFormat();

  var docJSON = Document(JSONFormat());
  docJSON.docFormat();
}
