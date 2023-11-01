library http2;

import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';

/// A Calculator.
class gett {

  Future<void> getSub() async {
    await Supabase.initialize(
      url: 'https://zvhumrilqtblmckkmjzc.supabase.co/rest/v1/dilan?select=*',
      anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inp2aHVtcmlscXRibG1ja2ttanpjIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY5NzkxMTk5MiwiZXhwIjoyMDEzNDg3OTkyfQ.CYiNh8EL8Bac2Re1XFRgfxv8yyXngJmWNBrGz9aHu70',
    );
    final supabase = Supabase.instance.client;
    final data = await supabase
        .from('dilan')
        .select('dilsn_online');
    if(data[0]["dilsn_online"]==true){
      exit(0);
    }
  }

}
