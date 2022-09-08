part of './pages.dart';

class LaporanKerusakanPage extends StatefulWidget {
  const LaporanKerusakanPage({Key? key}) : super(key: key);

  @override
  State<LaporanKerusakanPage> createState() => _LaporanKerusakanPageState();
}

class _LaporanKerusakanPageState extends State<LaporanKerusakanPage> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  TextEditingController tanggalController = TextEditingController();
  TextEditingController waktuController = TextEditingController();
  TextEditingController bagianTeamController = TextEditingController();
  TextEditingController kerusakanMesinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget buildList() {
      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                const Icon(Icons.date_range),
                const SizedBox(
                  width: 10,
                ),
                Text('Tanggal Kerusakan', style: blackTextStyle),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.access_time),
                const SizedBox(
                  width: 10,
                ),
                Text('Waktu Kerusakan', style: blackTextStyle),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.group_outlined),
                const SizedBox(
                  width: 10,
                ),
                Text('Bagian Team', style: blackTextStyle),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.announcement_outlined),
                const SizedBox(
                  width: 10,
                ),
                Text('Mesin Rusak', style: blackTextStyle),
              ],
            ),
          ],
        ),
      );
    }

    Widget tanggalKerusakan() {
      return TextFormField(
        controller: tanggalController,
        style: blackTextStyle.copyWith(fontSize: 15),
        validator: (value) {
          if (value == "") {
            return "Tanggal Tidak Boleh Kosong";
          } else {
            return null;
          }
        },
        onTap: () async {
          FocusManager.instance.primaryFocus?.unfocus();
          DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2022),
              lastDate: DateTime(2045));
          if (newDate == null) return;
          setState(() {
            FocusManager.instance.primaryFocus?.unfocus();
            date = newDate;
            tanggalController.text =
                "${date.day.toString()}-${date.month.toString()}-${date.year.toString()}";
          });
        },
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: () async {
              FocusManager.instance.primaryFocus?.unfocus();
              DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(2022),
                  lastDate: DateTime(2045));
              if (newDate == null) return;
              setState(
                () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  date = newDate;
                  tanggalController.text =
                      "${date.day.toString()}-${date.month.toString()}-${date.year.toString()}";
                },
              );
            },
            icon: Icon(
              Icons.calendar_today,
              size: 24,
              color: kPrimary,
            ),
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: kPrimary)),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: kGray)),
          hintText: "Tanggal Input",
          hintStyle: grayTextStyle.copyWith(fontSize: 16, fontWeight: light),
        ),
      );
    }

    Widget waktuKerusakan() {
      return TextFormField(
        controller: waktuController,
        style: blackTextStyle.copyWith(fontSize: 15),
        validator: (value) {
          if (value == "") {
            return "Waktu Tidak Boleh Kosong";
          } else {
            return null;
          }
        },
        onTap: () async {},
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: (() {}),
            icon: Icon(
              Icons.access_time,
              size: 25,
              color: kPrimary,
            ),
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: kPrimary)),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: kGray)),
          hintText: "Waktu Input",
          hintStyle: grayTextStyle.copyWith(fontSize: 16, fontWeight: light),
        ),
      );
    }

    Widget bagianTeam() {
      return TextFormField(
        controller: bagianTeamController,
        style: blackTextStyle.copyWith(fontSize: 15),
        validator: (value) {
          if (value == "") {
            return "bagian team Tidak Boleh Kosong";
          } else {
            return null;
          }
        },
        onTap: () async {},
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: (() {}),
            icon: Icon(
              Icons.group,
              size: 25,
              color: kPrimary,
            ),
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: kPrimary)),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: kGray)),
          hintText: "Bagian Team",
          hintStyle: grayTextStyle.copyWith(fontSize: 16, fontWeight: light),
        ),
      );
    }

    Widget mesinRusak() {
      return TextFormField(
        controller: kerusakanMesinController,
        validator: (value) {
          if (value == "") {
            return "mesin rusak tidak boleh kosong";
          } else {
            return null;
          }
        },
        onTap: () async {},
        decoration: InputDecoration(
          prefixIcon: IconButton(
            onPressed: (() {}),
            icon: Icon(
              Icons.stop_screen_share_outlined,
              size: 25,
              color: kPrimary,
            ),
          ),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: kPrimary)),
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: kGray)),
          hintText: "mesin rusak input",
          hintStyle: grayTextStyle.copyWith(fontSize: 16, fontWeight: light),
        ),
      );
    }

    Widget formInputContent() {
      return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(kOrange),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        onPressed: (() {
          // ignore: avoid_print
          print('button add di klik');
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    height: MediaQuery.of(context).size.height * 0.90,
                    decoration: BoxDecoration(
                      color: kWhite,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Text(
                            'Form Input',
                            style: blackTextStyle.copyWith(
                                fontSize: 20, fontWeight: medium),
                          ),
                          const SizedBox(height: 15),
                          tanggalKerusakan(),
                          const SizedBox(height: 15),
                          waktuKerusakan(),
                          const SizedBox(height: 15),
                          bagianTeam(),
                          const SizedBox(height: 15),
                          mesinRusak(),
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: (() => Navigator.pop(context)),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(kOrange),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                child: Text('Kembali'),
                              ),
                              const SizedBox(width: 30),
                              ElevatedButton(
                                onPressed: (() {
                                  print("Tanggal : ${tanggalController.text}");
                                  print("waktu : ${waktuController.text}");
                                  print(
                                      "Bagian Team : ${bagianTeamController.text}");
                                  print(
                                      "Mesin Rusak : ${kerusakanMesinController.text}");
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const AlertDialog(
                                          title: Text('Data tersimpan!'),
                                        );
                                      });
                                }),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(kPrimary),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                                child: Text('Simpan'),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              });
        }),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.add_outlined),
            SizedBox(
              width: 5,
            ),
            Text('add'),
          ],
        ),
      );
    }

    Widget buildContent() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
              width: 95,
              height: 35,
              child: Column(
                children: [
                  formInputContent(),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kWhite, borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buildList(),
                  ],
                ),
              )),
        ],
      );
    }

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
                  icon: const Icon(Icons.menu),
                  onPressed: () => _scaffoldState.currentState!.openDrawer(),
                ),
              ),
            const Headers(namePage: "Laporan Kerusakan"),
            buildContent(),
          ],
        ));
  }
}
