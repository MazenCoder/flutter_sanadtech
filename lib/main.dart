import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:fluttersanadtech/core/injection/injection_container.dart';
import 'package:fluttersanadtech/core/notifier/app_notifier.dart';
import 'package:fluttersanadtech/pages/map_drawing_route.dart';
import 'package:fluttersanadtech/pages/draw_polygons.dart';
import 'core/injection/injection_container.dart' as di;
import 'core/database/app_database.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'core/util/image_helper.dart';
import 'core/util/app_utils.dart';
import 'dart:typed_data';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.setup();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider.value(value: AppNotifier()),
    ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  var db = AppDatabase.instance;
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => db,
      dispose: (context, value) => value.dispose(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Challenge SanadTech',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white,)),
          primaryIconTheme: const IconThemeData.fallback().copyWith(
            color: Colors.white,
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Challenge SandTech'),
      ),
      body: FutureBuilder<Uint8List>(
        future: sl<AppUtils>().imgToBytes(ImageHelper.HOME),
        builder: (context, snapshot) {
          switch(snapshot.connectionState) {
            case ConnectionState.waiting: return Center(
              child: CircularProgressIndicator(),
            );
            default:
              return ListView(
                padding: const EdgeInsets.all(6),
                children: <Widget>[
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: () => Navigator.push(context, MaterialPageRoute(
                            builder: (context) => DrawPolygons(snapshot.data, null)
                        )),
                        title: Text("Draw Polygons"),
                        leading: Icon(MdiIcons.fromString('map-marker-path')),
                        subtitle: Text('you can creating (CRUD) one or many polylines and place/remove geo markers on the same Map\n - Select point to remove or update\n - online/offline'),
                      ),
                    ),
                  ),

                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        onTap: () => Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MapDrawingRoute(snapshot.data)
                        )),
                        title: Text("Draw route"),
                        leading: Icon(MdiIcons.directions),
                        subtitle: Text('you can draw route on google map between two locations\n - Select point to remove or update'),
                      ),
                    ),
                  ),
                ],
              );
          }
        },
      ),
    );
  }
}



