import 'package:forecast/data/models/person.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalStorage {
  static const String personKey = 'person';

  Box<Person> get personBox => Hive.box<Person>(personKey);

  Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter(PersonAdapter());

    await Hive.openBox<Person>(personKey);
  }
}
