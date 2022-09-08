part of './pages.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/404.png"))),
            ),
          ),
          Center(
            child: Text(
              "Oopss, halaman yang kamu cari tidak tersedia",
              style:
                  primaryTextStyle.copyWith(fontSize: 20, fontWeight: medium),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: kOrange),
                child: Text(
                  "Kembali ke halaman utama",
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
