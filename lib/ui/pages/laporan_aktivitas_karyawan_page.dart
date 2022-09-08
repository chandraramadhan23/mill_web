part of './pages.dart';

class LaporanAktivitasKaryawanPage extends StatefulWidget {
  LaporanAktivitasKaryawanPage({Key? key}) : super(key: key);

  @override
  State<LaporanAktivitasKaryawanPage> createState() =>
      _LaporanAktivitasKaryawanPageState();
}

class _LaporanAktivitasKaryawanPageState
    extends State<LaporanAktivitasKaryawanPage> {
  GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      backgroundColor: kGround,
      drawer: SideMenu(),
      body: Column(
        children: [
          if (Responsive.isMobile(context) || Responsive.isTablet(context))
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () => _scaffoldState.currentState!.openDrawer(),
              ),
            ),
          Center(
            child: Text("Laporan Aktivitas View"),
          ),
        ],
      ),
    );
  }
}
