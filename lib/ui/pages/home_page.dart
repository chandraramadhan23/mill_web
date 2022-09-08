part of './pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Widget contentReport() {
      return Container(
        margin: const EdgeInsets.only(bottom: 50, left: 35, right: 35),
        child: Responsive.isMobile(context)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 308,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/card-one.png"),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Perbaikan (Bulanan)",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          "35 Perbaikan",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 308,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/card-two.png"),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Kerusakan (Bulanan)",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          "40 Kerusakan",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        )
                      ],
                    ),
                  )
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 308,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/card-one.png"),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Perbaikan (Bulanan)",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          "35 Perbaikan",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    width: 308,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage("assets/card-two.png"),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Kerusakan (Bulanan)",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          "40 Kerusakan",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        )
                      ],
                    ),
                  )
                ],
              ),
      );
    }

    return Scaffold(
      key: _scaffoldState,
      backgroundColor: kGround,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (Responsive.isMobile(context) || Responsive.isTablet(context))
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => _scaffoldState.currentState!.openDrawer(),
                ),
              ),
            const Headers(namePage: "Beranda"),
            contentReport(),
          ],
        ),
      ),
    );
  }
}
