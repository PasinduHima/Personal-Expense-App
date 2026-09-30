import 'package:uuid/uuid.dart';

//create a unique id using uuid

final uuid = const Uuid().v4();

// use enum for catogory
enum Category { food, travel, leasure, work }

class ExpenceModel {
  ExpenceModel({
    required this.amount,
    required this.date,
    required this.title,
    required this.category,
  }) : id = uuid;

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
