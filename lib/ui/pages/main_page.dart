part of 'pages.dart';

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign in Page")),
      body: Center(
        child: ElevatedButton(
          child: Text("Sign out"),
          onPressed: () {
            AuthServices.signOut();
          },),
      ),
    );
  }
}
