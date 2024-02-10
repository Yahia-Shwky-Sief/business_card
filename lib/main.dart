import 'package:business_card/view/home/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';


Box? userlun;

Future<Box> openHiveBox(String boxName) async {
  if (!Hive.isBoxOpen(boxName)) {
    Hive.init((await getApplicationDocumentsDirectory()).path);
  }
  return await Hive.openBox(boxName);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  userlun = await openHiveBox('app_lunguage');
  if (userlun?.get('lunguage') == null) {
    userlun?.put('lunguage', 'en');
  }
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business card',
      home: Home(),
    );
  }
}
