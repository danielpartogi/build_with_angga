part of 'pages.dart';

class Wrapper extends StatelessWidget {

  Widget _getHome(User? fbUser) {
    if (fbUser == null) {
      return SignInPage();
    } else {
      return MainPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    User? fbUser = Provider.of<User?>(context);
    return MaterialApp(
      home: _getHome(fbUser),
    );
  }
}
