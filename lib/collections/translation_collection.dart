import 'package:isar/isar.dart';

part 'translation_collection.g.dart';

@Collection()
class TranslationCollection {
  Id id = Isar.autoIncrement;
  late String englishText;
  late String arabicTranslation;
}
