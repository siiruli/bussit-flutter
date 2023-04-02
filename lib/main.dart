import 'package:bussit/data/hsl_api.dart';
import 'package:bussit/model/saved_stops.dart';
import 'package:bussit/ui/saved_stops_view.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GraphQLProvider( 
      client: getHslApiClient(),
      child: ChangeNotifierProvider(
        create: (context) => SavedStopIds(),
        child: MaterialApp(
          title: 'Bussit',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            listTileTheme: const ListTileThemeData(
              minLeadingWidth: 0,
            ),
          ),
          home: const MyHomePage(title: 'Stop list'),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return const StopsView();
  }
}
