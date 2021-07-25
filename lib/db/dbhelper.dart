import 'dart:io';

import 'package:path/path.dart';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';

import '../models/Questions.dart';
import '../models/Questions.dart';
import '../models/Questions.dart';
import '../models/Questions.dart';
import 'Contact.dart';

class DatabaseHelper {
  static final _databaseName = "python6.db";
  static final _databaseVersion = 1;

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database _database;
  Future<Database> get database async {

    if (_database != null) {
      print ("00000000000000000000000000000000000000");
      return _database;
    }
    _database = await _initDatabase(); // only initialize if not created already
    return _database;
  }

  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    print ("1111111111111111111111111111111");
    if (!(await databaseExists(path))) {
      print ("1111111111  CopyingDB  11111111111111");
      ByteData data = await rootBundle.load(join("assets", 'python4.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
    }
    print ("222222222222 data base already exist 2222222222222222");
    return await openDatabase(path, version: _databaseVersion);
  }

  //contact - retrieve all
  Future<List<Question>> fetchContacts() async {
    Database db = await database;
    List<Map> questions = await db.query('questions');
    print("4444444444444  444444from fetchContacts function   "+questions.length.toString());
    return questions.length == 0
    ? []
    : questions.map((x) => Question.fromMap(x)).toList();
  }

  Future<List<Question>> getAllUser() async {
    Database db = await database;
    var res = await db.query("questions");

    List<Question> list =
    res.isNotEmpty ? res.map((c) => Question.fromMap(c)).toList() : null;
    return list;
  }

  Future<List<Question>> getAllUser2() async {
    Database db = await database;
    //var res = await db.query("questions");
    final List<Map<String, dynamic>> maps = await db.query('questions');

    return List.generate(maps.length, (i) {
      return Question(
        id: maps[i]['id'],
        question: maps[i]['date'],
        a: maps[i]['a'],
        b: maps[i]['b'],
        c: maps[i]['c'],
        d: maps[i]['d'],
        answer: maps[i]['answer_index'],

      );
    });
  }// end Function

}//End Class