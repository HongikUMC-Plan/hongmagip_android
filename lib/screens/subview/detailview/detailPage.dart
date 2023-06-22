import 'package:flutter/material.dart';
import '../koreanList.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

void showDetailPage(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    builder: (BuildContext context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.95,
          child: Padding(
            padding: EdgeInsets.fromLTRB(32, 62, 32, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // 식당이름 및 분류 text row
                  children: [
                    Text(
                      restaurantList[0],
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          letterSpacing: -2),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        type[0],
                        style: TextStyle(
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 16,
                            letterSpacing: -1),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  // 지도 button 두 개 row
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // kakao map url
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(60, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20),
                              right: Radius.circular(20),
                            ),
                          ),
                        ),
                        child: Icon(Icons.pin_drop), // kakao map icon으로 수정필요
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // kakao map url
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(60, 25),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20),
                              right: Radius.circular(20),
                            ),
                          ),
                        ),
                        child: Icon(Icons.pin_drop), // naver map icon으로 수정필요
                      ),
                    ],
                  ),
                ),
                Container( // Best Review 상단 실선
                  height:1.0,
                  color:Colors.grey,
                ),
                Padding( // Best Review text
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 14),
                  child: Text(
                    'Best Review',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        letterSpacing: -1.5),
                  ),
                ),
                Expanded( // 상위 review 나열된 listview
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: InkWell(
                          onTap: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
                          },
                          child: Container(
                            width: 320,
                            height:130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.25),
                                  blurRadius: 4,
                                  offset: Offset(0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(18, 15, 18, 9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '홍대 제순식당 가성비 맛집 상수 백반집...',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      letterSpacing: -2,
                                    ),
                                  ),
                                  Text( // text에 '가 있으면 오류가 나지는 않으려나
                                    '홍대 앞 식당가 근처를 돌아다니다가 ''제순식당''이라는 곳을 발견했다. 제육 순두부의 제순인가? 이름의 의미는 정확히 ...',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: InkWell(
                          onTap: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
                          },
                          child: Container(
                            width: 320,
                            height:130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.25),
                                  blurRadius: 4,
                                  offset: Offset(0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(18, 15, 18, 9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '홍대 제순식당 가성비 맛집 상수 백반집...',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      letterSpacing: -2,
                                    ),
                                  ),
                                  Text( // text에 '가 있으면 오류가 나지는 않으려나
                                    '홍대 앞 식당가 근처를 돌아다니다가 ''제순식당''이라는 곳을 발견했다. 제육 순두부의 제순인가? 이름의 의미는 정확히 ...',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: InkWell(
                          onTap: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
                          },
                          child: Container(
                            width: 320,
                            height:130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.25),
                                  blurRadius: 4,
                                  offset: Offset(0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(18, 15, 18, 9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '홍대 제순식당 가성비 맛집 상수 백반집...',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      letterSpacing: -2,
                                    ),
                                  ),
                                  Text( // text에 '가 있으면 오류가 나지는 않으려나
                                    '홍대 앞 식당가 근처를 돌아다니다가 ''제순식당''이라는 곳을 발견했다. 제육 순두부의 제순인가? 이름의 의미는 정확히 ...',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: InkWell(
                          onTap: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
                          },
                          child: Container(
                            width: 320,
                            height:130,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.25),
                                  blurRadius: 4,
                                  offset: Offset(0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(18, 15, 18, 9),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '홍대 제순식당 가성비 맛집 상수 백반집...',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      letterSpacing: -2,
                                    ),
                                  ),
                                  Text( // text에 '가 있으면 오류가 나지는 않으려나
                                    '홍대 앞 식당가 근처를 돌아다니다가 ''제순식당''이라는 곳을 발견했다. 제육 순두부의 제순인가? 이름의 의미는 정확히 ...',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Pretendard',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      letterSpacing: -1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      );
    },
  );
}
