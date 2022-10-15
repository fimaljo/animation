import 'package:animation/database/data_base.service.dart';
import 'package:animation/database/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:supabase/supabase.dart';

class DatabaseNotifier extends ChangeNotifier {
  final DatabaseService _databaseService = DatabaseService();
  Future fetchTodo() async {
    List data = await _databaseService.fetchTodo();
    //var modelledData = Todo.fromJson(data);
    // return modelledData;
    print(data);
    return data
        .map((todoElement) => EventDataModel.fromJson(todoElement))
        .toList();
  }

  // Future<PostgrestResponse?> addTodo(
  //     {required String title, required String description}) async {
  //   await _databaseService.addTodo(title: title, description: description);
  // }

  // Future<PostgrestResponse?> updateTodo(
  //     {required String title,
  //     required String description,
  //     required int id}) async {
  //   await _databaseService.updateTodo(
  //       title: title, description: description, id: id);
  // }

  // Future<PostgrestResponse?> deleteTodo({required int id}) async {
  //   await _databaseService.deleteTodo(id: id);
  // }
}
