import 'package:animation/screens/creditionals/supabase.credential.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class EventServices {
  // static SupabaseClient client = Supabase.instance.client;
  // Future fechData() async {
  //   try {
  //     var response =
  //         await Supabase.instance.client.from('events').select().execute();
  //     var data = response.data;
  //     return data;
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }
  static SupabaseClient client = Supabase.instance.client;
  static Future<PostgrestResponse> getAllEvents() async {
    try {
      PostgrestResponse response =
          await client.from('events').select().execute();
      return response;
    } catch (error) {
      rethrow;
    }
  }

  // static Future<PostgrestResponse> getAllEvents() async {
  //   try {
  //     PostgrestResponse response = await SupasbaseCredentials.supabaseClint
  //         .from('events')
  //         .select()
  //         .execute();
  //     print("dd" + response.toString());
  //     return response;
  //   } catch (error) {
  //     rethrow;
  //   }
  // }
}
