part of 'splash.imports.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    moveToOnBoardScreen();
    super.initState();
  }

  moveToOnBoardScreen() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {
      Utils.manipulation(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: LayoutBuilder(
        builder: (context, BoxConstraints constraints) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: FadedScaleAnimation(
                  child: Text(
                    MyStrings.appTitle,
                    style: const TextStyle(
                      color: MyColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  MyStrings.appSubTitle,
                  style: GoogleFonts.italianno(
                    textStyle: const TextStyle(
                      color: MyColors.whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
