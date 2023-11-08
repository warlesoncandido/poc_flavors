import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:poc_flavor/flavor/flavor.dart';

void main() {
  const flavor = String.fromEnvironment('APP_FLAVOR');
  GetIt.instance.registerSingleton(FlavorApp(flavor));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: GetIt.instance<FlavorApp>().theme.primaryColor,
        appBarTheme: AppBarTheme(
          backgroundColor: GetIt.instance<FlavorApp>().theme.primaryColor,
          elevation: 8,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              GetIt.instance<FlavorApp>().images.logo,
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
