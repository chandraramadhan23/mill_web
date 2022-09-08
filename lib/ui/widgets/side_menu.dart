part of './widgets.dart';

class SideMenu extends StatefulWidget {
  SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              width: 255,
              height: 75,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo.png"),
                ),
              ),
            ),
          ),
          DrawerListTile(
            title: "Beranda",
            icon: "assets/homeIcon.png",
            routeName: '/home',
            press: () {
              context.read<PageCubit>().setPage('/home');
              // Navigator.pushNamed(context, RoutesName.homePage);
              // Navigator.pushNamed(context, '/main/home');
            },
          ),
          SizedBox(
            height: 15,
          ),
          DrawerListTile(
            title: "Laporan Kerusakan",
            icon: "assets/riskIcon.png",
            routeName: '/laporan-kerusakan',
            press: () {
              context.read<PageCubit>().setPage('/laporan-kerusakan');
              // Navigator.pushNamed(context, '/main/laporan-kerusakan');
            },
          ),
          SizedBox(
            height: 15,
          ),
          DrawerListTile(
            title: "Laporan Aktivitas Karyawan",
            icon: "assets/employeIcon.png",
            routeName: '/laporan-karyawan',
            press: () {
              context.read<PageCubit>().setPage('/laporan-karyawan');
              // Navigator.pushNamed(context, '/main/laporan-karyawan');
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.icon,
    required this.press,
    required this.routeName,
  }) : super(key: key);

  final String title, icon;
  final String routeName;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 14,
      leading: Image.asset(
        icon,
        color: context.read<PageCubit>().state == routeName ? kPrimary : kGray,
        height: 36,
        width: 36,
      ),
      title: Text(
        title,
        style: context.read<PageCubit>().state == routeName
            ? primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium)
            : grayTextStyle.copyWith(fontSize: 16, fontWeight: medium),
      ),
    );
  }
}
