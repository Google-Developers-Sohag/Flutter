import 'dart:io' as io;
import 'package:path_provider/path_provider.dart' as pp;

Future<String> get _localPath async {
  final directory = await pp.getApplicationDocumentsDirectory();//Android/com.thomas.appName
  return directory.path;
}

Future<io.File> get _localFile async {
  final path = await _localPath;
  print(path);
  return io.File('$path/note1.txt');
}

Future<io.File> writeData(String text) async {
  final file = await _localFile;
  print(text);
  return file.writeAsString('$text\r\n', mode: io.FileMode.write);
}
//writeData('My name is Thomas');
//note1.txt >> My name is Thomas
//

Future<String?> get readData async{
  try{
    final file = await _localFile;
    String body = await file.readAsString();
    return body;
  } catch(e){
    print(e);
  }
}