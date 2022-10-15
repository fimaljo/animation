import 'dart:math';

import '../screens/creditionals/supabase.credential.dart';

class DatabaseService {
//Fetching data
  Future fetchTodo() async {
    try {
      var response = await SupasbaseCredentials.supabaseClint
          .from("events")
          .select()
          .execute();
      var data = response.data;
      print(data.toString());
      return data;
    } catch (e) {
      print(e.toString());
    }
  }

// //Creating data
//   Future<PostgrestResponse?> addTodo({
//     required String title,
//     required String description,
//   }) async {
//     try {
//       PostgrestResponse? response = await SupasbaseCredentials.supabaseClint
//           .from("tododb")
//           .insert({"title": title, "description": description}).execute();
//       if (response.data != null) {
//         var data = response.data;
//         return data;
//       } else {
//         print(response.error);
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//   }
//   //Updae data

//   Future<PostgrestResponse?> updateTodo(
//       {required String title,
//       required String description,
//       required int id}) async {
//     try {
//       PostgrestResponse? response = await SupasbaseCredentials.supabaseClint
//           .from("tododb")
//           .update(
//               {"title": title, "description": description, "id": id}).execute();
//       if (response.data != null) {
//         var data = response.data;
//         return data;
//       } else {
//         print(response.error);
//       }
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// //Updae data

//   Future<PostgrestResponse?> deleteTodo({required int id}) async {
//     PostgrestResponse? response = await SupasbaseCredentials.supabaseClint
//         .from("tododb")
//         .delete()
//         .eq('id', id)
//         .execute();

//     return response;
//   }
}
