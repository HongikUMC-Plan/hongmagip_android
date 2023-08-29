import 'package:flutter/material.dart';
import 'package:hongmagip_android/config/restaurantTypes.dart';
import 'package:hongmagip_android/config/restaurants.dart';
import 'package:hongmagip_android/screens/view.dart';
import 'package:hongmagip_android/config/palette.dart';
import 'subview/detailview/detailPage.dart';

class SubView extends StatefulWidget {
  final String type;
  final List<String> restaurantList;
  final Color containerColor;

  const SubView({
    Key? key,
    required this.type,
    required this.restaurantList,
    required this.containerColor,
  }) : super(key: key);

  @override
  _SubViewState createState() => _SubViewState();
}

class _SubViewState extends State<SubView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          title: Text(''),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
              height: (MediaQuery.of(context).size.height) * 0.1,
              child: Container()
          ),
          SizedBox(
              height: (MediaQuery.of(context).size.height) * 0.1,
              child: Text(widget.type, style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.w800),)),
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.6,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6,
                ),
                physics: NeverScrollableScrollPhysics(),
                itemCount: widget.restaurantList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      showDetailPage(context, widget.restaurantList[index], widget.type);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: widget.containerColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.restaurantList[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height) * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 1,),
                InkWell(
                  onTap: (){
                    Navigator.pop(
                      context, MaterialPageRoute(
                        builder: (context) => ViewScreen()),
                    );
                  },
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/image/뒤로가기.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                Spacer(flex: 1,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'subview/detailview/detailPage.dart';
//
// class SubView extends StatelessWidget {
//   final String type;
//   final List<String> restaurantList;
//   final Color containerColor; // 컨테이너 색상을 위한 Color 속성 추가
//
//   const SubView({
//     Key? key,
//     required this.type,
//     required this.restaurantList,
//     required this.containerColor,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: (MediaQuery.of(context).size.height) * 0.6,
//       child: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             mainAxisSpacing: 6,
//             crossAxisSpacing: 6,
//           ),
//           physics: NeverScrollableScrollPhysics(),
//           itemCount: restaurantList.length,
//           itemBuilder: (context, index) {
//             return InkWell(
//               onTap: () {
//                 showDetailPage(context, restaurantList[index], type);
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   color: containerColor,
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       restaurantList[index],
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.w700,
//                         fontSize: 24,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
