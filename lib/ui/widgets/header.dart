part of './widgets.dart';

class Headers extends StatelessWidget {
  final String namePage;
  const Headers({Key? key, required this.namePage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: Container(
        margin: EdgeInsets.only(top: 35, left: 35, right: 35),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              namePage,
              style: blackTextStyle.copyWith(fontSize: 24, fontWeight: medium),
            ),
            Responsive.isMobile(context)
                ? Container(
                    padding: EdgeInsets.all(10),
                    width: 120,
                    // height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kPrimary,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/dummyProfile.png"))),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.expand_more_rounded,
                            size: 30,
                            color: kWhite,
                          ),
                        )
                      ],
                    ),
                  )
                : Container(
                    padding: EdgeInsets.all(10),
                    width: 206,
                    // height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kPrimary,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/dummyProfile.png"))),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            "Hi Toyyib!",
                            style: whiteTextStyle.copyWith(
                                fontSize: 16, fontWeight: semiBold),
                          ),
                        ),
                        PopupMenuButton(
                          child: Icon(
                            Icons.expand_more_rounded,
                            size: 30,
                            color: kWhite,
                          ),
                          itemBuilder: (context) {
                            return [
                              PopupMenuItem(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigator.pop(context);
                                    Navigator.pushNamed(context, '/profile');
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.account_circle_rounded,
                                        color: kGray,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "Profil",
                                          style: grayTextStyle.copyWith(
                                              fontWeight: medium),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      color: kGray,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Pengaturan",
                                      style: grayTextStyle.copyWith(
                                          fontWeight: medium),
                                    )
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.logout_rounded,
                                      color: kOrange,
                                      size: 18,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Keluar",
                                      style: orangeTextStyle.copyWith(
                                          fontWeight: medium),
                                    )
                                  ],
                                ),
                              ),
                            ];
                          },
                        )
                      ],
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
