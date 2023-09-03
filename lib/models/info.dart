import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../colors/palette.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

void showInfoPage(BuildContext context) {

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Palette.sheetColor,
    builder: (BuildContext context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.95,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              SizedBox(
                height: 40,
              ),
              Text(
                'Info',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    fontSize: 24,),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: EdgeInsets.zero,
                child: Image.asset(
                  'assets/image/logo_non.png',
                  width: 100,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: const <Widget> [
                  Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Text(
                      'iOS 류동완',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Text(
                      'Android 최서영',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,),
                    ),
                  ),
                  Text(
                    'Design 박세영',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(120, 0, 120, 0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: (){
                    launchUrl(
                        Uri.parse(
                            'https://github.com/HongikUMC-Plan/hongmagip_android'
                        ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image/github.png',
                        width: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(3, 2, 0, 0),
                        child: Text(
                          'GitHub',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 4),
                child: Text(
                  'v 1.0',
                  style: TextStyle(
                    color: Palette.versionColor,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
