part of './pages.dart';

class MainPage extends StatefulWidget {
  final String? page;
  final String? extra;
  final Widget? child;
  const MainPage({Key? key, this.page, this.extra, this.child})
      : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Widget buildContent(String routeName) {
      switch (routeName) {
        case '/home':
          return const HomePage();
        case '/laporan-kerusakan':
          return const LaporanKerusakanPage();
        case '/laporan-karyawan':
          return LaporanAktivitasKaryawanPage();
        default:
          return const NotFoundPage();
      }
    }

    return BlocBuilder<PageCubit, String>(
      builder: (context, routeName) {
        return Scaffold(
          drawer: SideMenu(),
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  child: SideMenu(),
                ),
              Expanded(flex: 5, child: buildContent(routeName)),
              // Expanded(flex: 5, child: widget.child),
              // Row(
              //   children: [
              // Align(
              //   alignment: Alignment.topRight,
              //   child: IconButton(
              //     icon: Icon(Icons.menu),
              //     onPressed: () => scaffoldKey.currentState?.openDrawer(),
              //   ),
              // ),
              //     Expanded(flex: 5, child: HomePage())
              //   ],
              // )
            ],
          ),
        );
      },
    );
  }
}
