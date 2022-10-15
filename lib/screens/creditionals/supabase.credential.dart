import 'package:supabase/supabase.dart';

class SupasbaseCredentials {
  static const String APIKEY =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inhub2R6ZHl2dmZ5dGFyeWRzanZxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTM5MDM3ODksImV4cCI6MTk2OTQ3OTc4OX0.uTTh9kuORgr12G-mtWk1HB_Du0XeOuOXoX14mCEOaCo";
  static const String APIURL = "https://xnodzdyvvfytarydsjvq.supabase.co";
  static SupabaseClient supabaseClint = SupabaseClient(APIURL, APIKEY);
}
