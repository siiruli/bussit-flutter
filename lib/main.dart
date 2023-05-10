import 'package:bussit/api/hsl_api.dart';
import 'package:bussit/api/map_api.dart';
import 'package:bussit/model/saved_stops.dart';
import 'package:bussit/ui/itinerary_view.dart';
import 'package:bussit/ui/widgets/map/map_widget.dart';
import 'package:bussit/ui/saved_stops_view.dart';
import 'package:bussit/ui/stop_search_view.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final app = MaterialApp(
      title: 'Bussit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        listTileTheme: const ListTileThemeData(
          minLeadingWidth: 0,
        ),
        expansionTileTheme: const ExpansionTileThemeData(
          tilePadding: EdgeInsets.zero,
        )
      ),
      home: const MyHomePage(title: "Bussit",),
    );

    // Wrap the app with providers
    return GraphQLProvider( 
      client: getHslApiClient(),
      child: ChangeNotifierProvider(
        create: (context) => SavedStopIds(),
        child: app,
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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  final _tabTitle = [
    'Saved stops',
    'Find Route',
    'Map',
  ];
  final _tabIcon = [
    const Icon(Icons.directions_bus),
    const Icon(Icons.route),
    const Icon(Icons.map),
  ];
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabIcon.length);
    _tabController.addListener(() {
      setState((){});
    });
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tabTitle[_tabController.index]),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: false,
          tabs: _tabIcon.map((e) => Tab(icon: e)).toList(),
        ),
      ),
      // body: StopsView(),
      body: TabBarView(
        controller: _tabController,
        children: const [StopsView(), ItineraryView(), MapWidget(showBikeRental: true,)],
      ),
      floatingActionButton: (_tabController.index != 0) ? 
        null : FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SearchStops()
            )
          );
        },
        tooltip: 'Find stops',
        child: const Icon(Icons.add),
      ),
    );
  }
}
