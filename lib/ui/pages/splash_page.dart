part of './pages.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/main/home');
    });
    return Scaffold(
      body: Center(
        child: Text("Splash Page"),
      ),
    );
  }
}
