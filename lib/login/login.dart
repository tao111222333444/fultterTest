
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<LoginPage> {
  String _Tag = "_LoginPageState";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Login"),
      ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: <Widget>[
            _buildInput()
          ],
        ),
      ),
    );
  }

  Widget _buildInput(){
    return Container(
      width: 295,
      margin: const EdgeInsets.only(top: 15),
      child: Column(
        children: [],
      ),
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
  void didUpdateWidget(covariant LoginPage oldWidget) {
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
