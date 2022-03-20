// import 'package:database_project/IO/path_provider.dart' as pp;
import 'package:database_project/IO/shared_preference.dart' as pref;
import 'package:flutter/material.dart';

class TextEditor extends StatefulWidget {
  const TextEditor({Key? key}) : super(key: key);

  @override
  _TextEditorState createState() => _TextEditorState();
}

class _TextEditorState extends State<TextEditor> {


  TextEditingController controller =  TextEditingController();
  @override
  void initState() {
    super.initState();
    setState(() {
      pref.readData.then((String? value){
        controller.text = value!;
      });
    });

  }
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 38, 8, 12),
        child: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Hi this is a hint',
            border: InputBorder.none,
          ),
          autocorrect: false,
          autofocus: true,
          cursorColor: Colors.blue,
          style: const TextStyle(
            fontSize: 24.0,
          ),
          keyboardType: TextInputType.multiline,
          maxLines: null,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save_alt_outlined),
        onPressed: (){
          pref.writeData(controller.text);
          },
      ),
    );
  }
}