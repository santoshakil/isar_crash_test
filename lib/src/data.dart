import 'package:isar/isar.dart';

part 'data.g.dart';

@Collection()
class Data {
  Id? id;

  final String name;

  Data(this.name);
}
