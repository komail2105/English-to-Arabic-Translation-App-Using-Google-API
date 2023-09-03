import 'package:engtoarabic_app/translationtable.dart';
import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:translator/translator.dart';
import 'collections/translation_collection.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationSupportDirectory();
  final isar = await Isar.open(
    [TranslationCollectionSchema],
    inspector: true,
    directory: dir.path,
  );

  runApp(MyApp(
    isar: isar,
  ));
}

class MyApp extends StatelessWidget {
  final Isar isar;

  const MyApp({
    Key? key,
    required this.isar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'English to Arabic Translator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        isar: isar,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Isar isar;
  const MyHomePage({
    Key? key,
    required this.isar,
  }) : super(key: key);

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  TextEditingController englishText = TextEditingController();
  dynamic arabicTranslation = '';
  TextEditingController arabicText = TextEditingController();
  GoogleTranslator translator = GoogleTranslator();

  addTranslation(Isar isar) async {
    final translation = isar.translationCollections;
    final addTranslation = TranslationCollection()
      ..englishText = englishText.text
      ..arabicTranslation = arabicText.text;

    await isar.writeTxn(() async {
      await translation.put(addTranslation);
      showMessage('Tranlation Saved');
    });
  }

  void translate() {
    translator.translate(englishText.text, from: "en", to: "ar").then((value) {
      setState(() {
        arabicTranslation = value;
        arabicText.text = arabicTranslation.toString();
      });
    });
  }

  message(String m) => SnackBar(
        content: Text(m),
      );

  showMessage(String m) =>
      ScaffoldMessenger.of(context).showSnackBar(message(m));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MyTable(
                      isar: widget.isar,
                    ))),
        child: const Icon(size: 32, Icons.table_view),
      ),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'English to Arabic Translator Using API',
          overflow: TextOverflow.fade,
        ),
        elevation: 0,
        toolbarHeight: 80,
      ),
      body: SizedBox(
        width: 440,
        height: 480,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              //height: 48,
              width: 360,
              child: TextField(
                textInputAction: TextInputAction.done,
                maxLines: 4,
                controller: englishText,
                decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelText: 'Enter English Text'),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 360,
              child: TextField(
                maxLines: 4,
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  labelText: 'Arabic Translation',
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                ),
                readOnly: true,
                controller: arabicText,
              ),
            ),
            SizedBox(
              height: 48,
              width: 360,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (englishText.text.isNotEmpty) {
                        translate();
                      } else {
                        showMessage('Please enter some text.');
                      }
                    },
                    child: const Text('Translate'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        if (englishText.text.isNotEmpty) {
                          translate();
                          addTranslation(widget.isar);
                        } else {
                          showMessage('Enter text in English for translation');
                        }
                      })
                    },
                    child: const Text('Save'),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      arabicText.clear();
                      englishText.clear();
                    },
                    child: const Text('Clear'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
