import 'package:flutter/material.dart';
import 'package:mtest/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [MyObserver()],
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class MyObserver extends NavigatorObserver{
  @override
  void didStopUserGesture() {
    _print("didStopUserGesture");
    super.didStopUserGesture();
  }
  @override
  void didPop(Route route, Route? previousRoute) {
    _print("didPop  ${route.toString()} \n  ${previousRoute.toString()}");
    // TODO: implement didPop
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    _print("didPush  ${route.toString()} \n  ${previousRoute.toString()}");
    // TODO: implement didPush
    super.didPush(route, previousRoute);
  }
  @override
  void didRemove(Route route, Route? previousRoute) {
    _print("didRemove  ${route.toString()} \n  ${previousRoute.toString()}");
    // TODO: implement didRemove
    super.didRemove(route, previousRoute);
  }
  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    _print("didReplace  ${newRoute.toString()} \n  ${oldRoute.toString()}");
    // TODO: implement didReplace
    // super.didReplace(newRoute, oldRoute);
  }
  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    _print("didStartUserGesture  ${route.toString()} \n  ${previousRoute.toString()}");
    // TODO: implement didStartUserGesture
    super.didStartUserGesture(route, previousRoute);
  }

  void _print(String aa){
    debugPrint("MyObserver  $aa");
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _Tag = "_MyHomePageState";

  void _incrementCounter() {
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LoginPage();
    },)).then((value) => {
      setState((){
        _counter++;
      })
    });
    // setState(() {
    //   // This call to setState tells the Flutter framework that something has
    //   // changed in this State, which causes it to rerun the build method below
    //   // so that the display can reflect the updated values. If we changed
    //   // _counter without calling setState(), then the build method would not be
    //   // called again, and so nothing would appear to happen.
    //   _counter++;
    // });
  }

  @override
  Widget build(BuildContext context) {
    _print("build");
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  @override
  void initState() {
    _print("initState");
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    _print("didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    _print("reassemble");
    super.reassemble();
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    // TODO: implement didUpdateWidget
    _print("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    _print("deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _print("dispose");
    super.dispose();
  }

  void _print(String aa){
    debugPrint("$_Tag  $aa");
  }
}
